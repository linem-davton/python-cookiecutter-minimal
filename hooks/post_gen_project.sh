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

# Initialize git repository if not already initialized
if [ ! -d .git ]; then
  git init
  echo "Initialized a new git repository."
else
  echo "Git repository already exists."
fi
# Add GitHub remote if the URL is provided
if [[ -z "{{ cookiecutter.github_url }}" ]]; then
  echo "No GitHub URL provided, skipping remote addition."
  exit 0
else
  git remote add github {{ cookiecutter.github_url }}
  git push --set-upstream github main
fi
