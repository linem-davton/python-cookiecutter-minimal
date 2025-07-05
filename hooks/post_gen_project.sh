#!/bin/bash 

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
  git init -b main
  git add -A
  git commit -m "Initial commit"
  echo "Initialized a new git repository."
else
  echo "Git repository already exists."
fi

{% if cookiecutter.github_url != "None" and cookiecutter.github_url %}
git remote add origin {{ cookiecutter.github_url }}
git push --set-upstream origin main
{% else %}
echo "No GitHub URL provided, skipping remote addition."
{% endif %}
