#!/usr/bin/env bash

export VIRTUAL_ENV="$(pwd)/env"
export PATH=$VIRTUAL_ENV/bin:$PATH
export PS1="(virtualenv) $PS1"
unset PYTHON_HOME

eval exec "gunicorn -c gunicorn.conf.py paperless.asgi:application"

exit 0
