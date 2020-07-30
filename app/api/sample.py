import logging

logger = logging.getLogger('sample')


def post_greeting(name):
    return 'Hello {name}'.format(name=name)
