#!/bin/bash
# ---- Python Environment Setup ----
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pre-commit install --hook-type pre-push
pre-commit install

# ------Docs-----------
if [ -d docs/source ]; then
  ln -sf ../../README.md docs/source/README.md 2>/dev/null
  sphinx-apidoc -o docs/source src/ --force
fi



