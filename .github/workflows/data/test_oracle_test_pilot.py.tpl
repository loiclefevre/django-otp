import os

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.oracle",
        "NAME": os.environ.get("TESTPILOT_CONNECTION_STRING_SUFFIX"),
        "USER": "django_tests_default_" + os.environ.get("RUNID"),
        "PASSWORD": os.environ.get("TESTPILOT_PASSWORD"),
        "HOST": "",
        "PORT": "",
        "TEST": {
            "CREATE_DB": False,
            "CREATE_USER": False,
            "USER": "django_tests_default_" + os.environ.get("RUNID"),
            "PASSWORD": os.environ.get("TESTPILOT_PASSWORD"),
        },
    },
    "other": {
        "ENGINE": "django.db.backends.oracle",
        "NAME": os.environ.get("TESTPILOT_CONNECTION_STRING_SUFFIX"),
        "USER": "django_tests_other_" + os.environ.get("RUNID"),
        "PASSWORD": os.environ.get("TESTPILOT_PASSWORD"),
        "HOST": "",
        "PORT": "",
        "TEST": {
            "CREATE_DB": False,
            "CREATE_USER": False,
            "USER": "django_tests_other_" + os.environ.get("RUNID"),
            "PASSWORD": os.environ.get("TESTPILOT_PASSWORD"),
        },
    },
}

SECRET_KEY = "django_tests_secret_key"

# Use a fast hasher to speed up tests.
PASSWORD_HASHERS = [
    "django.contrib.auth.hashers.MD5PasswordHasher",
]

USE_TZ = False
