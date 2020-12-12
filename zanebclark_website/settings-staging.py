from .settings import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = [
    'zd889rreaj.execute-api.us-west-1.amazonaws.com'
]

DATABASES = {
    'default': {
        'ENGINE': 'django_s3_sqlite',
        'NAME': 'sqlite-staging.db',
        "BUCKET": env_settings["s3_bucket"],
    }
}
