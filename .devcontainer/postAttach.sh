#!/bin/sh
cd `dirname $0`
cd ..
sudo chown -R vscode ~

poetry config virtualenvs.in-project true
poetry install --no-interaction
