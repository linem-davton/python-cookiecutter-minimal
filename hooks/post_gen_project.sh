#!/bin/bash 
set -euo pipefail

# move to generated root (cookiecutter already cd’s here, but be explicit)
cd "{{ cookiecutter.project_slug }}"

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pre-commit install --hook-type pre-push
pre-commit install
