#!/bin/bash

poetry config virtualenvs.path ./local/chameleon
poetry install

echo 'start'

exec "$@"
