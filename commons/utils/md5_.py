import hashlib


def format_md5(text):
    m = hashlib.md5()
    m.update(text.encode())
    return m.hexdigest()