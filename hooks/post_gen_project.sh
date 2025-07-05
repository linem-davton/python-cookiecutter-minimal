#!/bin/bash 

# move to generated root (cookiecutter already cd’s here, but be explicit)
cd "{{ cookiecutter.project_slug }}"

{% if cookiecutter.github_actions_ci == "No" %}
rm -f .github/workflows/ci.yml
{% endif %}

{% if cookiecutter.pypi_release == "No" %}
rm -f .github/workflows/pypi.yml
{% endif %}

{% if cookiecutter.testpypi_release == "No" %}
rm -f .github/workflows/testpypi.yml
{% endif %}

# Remove workflows dir if empty
rmdir --ignore-fail-on-non-empty .github/workflows 2>/dev/null || true

# ------Git-----------------
if [ ! -d .git ]; then
  git init -b main
  git add -A
  git commit -m "Initial commit"
  echo "Initialized a new git repository."
else
  echo "Git repository already exists."
fi

{% if cookiecutter.github_url != "None" and cookiecutter.github_url %}
git remote add github {{ cookiecutter.github_url }}
git push --set-upstream github main
{% else %}
echo "No GitHub URL provided, skipping remote addition."
{% endif %}
