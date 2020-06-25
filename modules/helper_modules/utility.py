"""Module with utility functions"""
from configparser import ConfigParser
import sys


def get_index(input_string, sub_string, ordinal):
    """Returns the index of substring provided"""
    current = -1
    for i in range(ordinal):
        current = input_string.index(sub_string, current + 1)
    return current


def get_user_settings():
    """Gets and returns the USER_SETTINGS from settings.ini"""
    config = ConfigParser()
    try:
        config.read('settings/settings.ini')
    except FileNotFoundError:
        sys.exit("settings.ini file not found. "
                 "Make sure it's in the same directory.")

    use_proxies = config['USER_SETTINGS'].getboolean('use_proxies')
    proxy_auth_type = config['USER_SETTINGS'].getint('proxy_auth_type')
    captcha_api_key = config['USER_SETTINGS'].get('captcha_api_key')
    num_of_accs = config['USER_SETTINGS'].getint('num_of_accs')

    return (use_proxies, proxy_auth_type,
            captcha_api_key,
            num_of_accs,)


def get_site_settings():
    """Return our [SITE_SETTINGS]"""
    config = ConfigParser()
    try:
        config.read('settings/settings.ini')
    except FileNotFoundError:
        sys.exit("settings.ini file not found. "
                 "Make sure it's in the same directory.")

    site_key = config['SITE_SETTINGS'].get('site_key')
    site_url = config['SITE_SETTINGS'].get('site_url')

    return site_key, site_url
