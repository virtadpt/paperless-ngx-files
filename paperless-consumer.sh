#!/usr/bin/env bash

export VIRTUAL_ENV="$(pwd)/env"
export PATH=$VIRTUAL_ENV/bin:$PATH
export PS1="(virtualenv) $PS1"
unset PYTHON_HOME

cd src/
eval exec "python ./manage.py document_consumer"

exit 0
