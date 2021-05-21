#!/bin/bash
set -e
rm -rf temp
rm -rf bundle.zip
pip install -r requirements.txt -t temp
cd temp; zip -r ../bundle.zip *; cd ..
zip -g bundle.zip *.py
rm -rf temp
exec "$@"
