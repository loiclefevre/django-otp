import os
from urllib.parse import urlsplit


def has_testpilot_connection_string():
    return bool(os.environ.get("TESTPILOT_CONNECTION_STRING_SUFFIX", "").strip())


def easy_connect_parts(name):
    """
    Extract host, port, and service name from an Oracle Easy Connect string.
    """
    if not name or "/" not in name:
        return {}

    try:
        parsed = urlsplit(name if "://" in name else "//" + name)
        port = parsed.port
    except ValueError:
        return {}

    service_name = parsed.path.lstrip("/").split("/", 1)[0]
    if not parsed.hostname or not service_name:
        return {}

    return {
        "HOST": parsed.hostname,
        "PORT": str(port or ""),
        "SERVICE_NAME": service_name,
    }
