# A Docker Image that mimics the Lambda environment
FROM lambci/lambda:build-python3.8
LABEL maintainer="<zanebclark@gmail.com>"

# Upgrade pip, setuptools, wheel, pip-tools, and zappa
RUN pip install -U pip setuptools wheel pip-tools zappa

# Activate venv per this article: https://pythonspeed.com/articles/activate-virtualenv-dockerfile/
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# To compile requirement information, you'll need both of these files.
COPY setup.py .
COPY README.md .

# Install requirements
RUN pip-compile --output-file requirements-Docker.txt
RUN pip install -r requirements-Docker.txt

RUN echo 'export PS1="\[\e[36m\]zappashell>\[\e[m\] "' >> /root/.bashrc

WORKDIR /var/task

CMD ["bash"]