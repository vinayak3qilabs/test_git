import json


def get_env_url():
    env_url = ""
    try:
        with open('manifest.json') as f:
            d = json.load(f)
 
            env_url = d['params']['environment']['url']
    except Exception as e:
         env_url = "https://google.com"

    return env_url

