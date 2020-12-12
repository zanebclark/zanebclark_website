1. Use PyCharm to start up a Django project
2. Set up a GitHub repo - `zanebclark_website`
3. License it. [choosealicense.com](https://choosealicense.com/)
4. Generate a `.gitignore` at [Toptal](https://www.toptal.com/developers/gitignore)
5. Generate a `.dockerignore`. Ensure that your virtual environment folder is included. 
5. Write your `setup.py`and `setup.cfg`, drawing heavily from the Packaging Authority [Sample Project](https://github.com/pypa/sampleproject)
6. Install pip-tools: `python -m pip install pip-tools`
7. Compile requirements.txt for development env: `pip-compile --output-file requirements-dev.txt`
8. Sync development environment: `pip-sync requirements-dev.txt`
9. Set up [Dockerfile](Dockerfile). See file for detailed notes
10. Set up [docker-compose](docker-compose.yml). See file for detailed notes
11. Build the container: `docker-compose build --no-cache`
12. Run the container to access shell: `docker-compose run --rm zappa`
13. Within the container, run `zappa init`
14. Again, within the container, run `zappa deploy Docker -s zappa_settings.yaml`
   
5. Zappa Env Setup:
    - Great Resource: [romandc](https://romandc.com/zappa-django-guide/)
    - Great 2nd Resource: [Best Practice Zappa Docker Deployment](https://medium.com/@sarit.r/best-practice-zappa-docker-deployment-9df22b9dba05)
    
.dockerignore
.coveragerc
