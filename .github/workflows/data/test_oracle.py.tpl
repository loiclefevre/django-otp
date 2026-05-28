import os

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.oracle",
        "NAME": os.environ.get("TESTPILOT_SUFFIX"),
        "USER": os.environ.get("TESTPILOT_USERNAME"),
        "PASSWORD": os.environ.get("TESTPILOT_PASSWORD"),
        "HOST": "",
        "PORT": "",
    }
}
