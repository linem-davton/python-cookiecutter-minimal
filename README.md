# Python Cookiecutter Minimal

> A lean, no‑boilerplate Cookiecutter template for quickly scaffolding modern Python projects.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## Why use this template?

- **Minimal** – sets up just the essentials: packaging, tests, linting, Github CI/CD, and docs. No framework lock‑in.
- **Single command setup** – `cookiecutter gh:linem-davton/python-cookiecutter-minimal` yields a ready‑to‑run project in seconds.
- **Automatic bootstrap** – post‑generation script creates a `venv`, installs requirements, initialises **git** on a `main` branch, installs _pre‑commit_ hooks and (optionally) pushes to GitHub.
- **Flexible licensing & tooling** – pick MIT, BSD‑3‑Clause, Apache‑2.0, GPL‑3.0 or none; enable/disable GitHub Actions CI, PyPI/TestPyPI release workflows, and Read the Docs.
- **Pure Python + Shell** – no heavy dependencies; works the same on Linux, macOS, WSL, and CI.

## Quick start

```bash
# 1 · install Cookiecutter
pip install -U cookiecutter

# 2 · generate a project
cookiecutter gh:linem-davton/python-cookiecutter-minimal

# 3 · run the tests (pytest)
cd <project_slug>
pytest -q
```

## ⚙️ Template prompts

| Prompt                  | Example input                                   | Effect                                                          |
| ----------------------- | ----------------------------------------------- | --------------------------------------------------------------- |
| **project_name**        | "My Cool App"                                   | Human‑readable name; becomes `project_slug` if not overridden   |
| **github_url**          | `git@github.com:you/my‑cool‑app.git`            | If set, post‑gen script adds remote and pushes the first commit |
| **github_actions_ci**   | `Yes`/`No`                                      | Adds GitHub Actions workflow for lint + tests on each push/pull |
| **pypi_release**        | `Yes`/`No`                                      | Adds workflow to publish to PyPI on tag                         |
| **testpypi_release**    | `Yes`/`No`                                      | Adds workflow to publish to TestPyPI on tag                     |
| **readthedocs**         | `Yes`/`No`                                      | Adds `docs/` skeleton + RTD config                              |
| **open_source_license** | `MIT`, `BSD-3`, `Apache-2.0`, `GPL-3.0`, `None` | Generates `LICENSE` file & badge                                |

_See `cookiecutter.json` for defaults and full list._ ([raw.githubusercontent.com](https://raw.githubusercontent.com/linem-davton/python-cookiecutter-minimal/main/cookiecutter.json))

## 🗂 Generated project layout

```
<project_root>/
├── {{ project_slug }}/           # your package
│   ├── __init__.py
│   └── main.py
├── tests/                        # pytest tests
│   └── test_basic.py
├── requirements.txt
├── README.md                     # auto‑filled with badges
├── LICENSE                       # selected license text
├── .pre-commit-config.yaml       # lint / test hooks
└── .github/workflows/            # optional CI / release YMLs
```

## Internals

- **`local_extensions.YearExtension`** injects `current_year` into Jinja templates so your LICENSE always has the right year. ([raw.githubusercontent.com](https://raw.githubusercontent.com/linem-davton/python-cookiecutter-minimal/main/local_extensions.py))
- Templates live at the repository root; dynamic files like `README.md` and workflows are rendered with Jinja2 conditionals.
- Files under `.github/workflows` are copied without rendering to avoid CI YAML quoting issues (see `_copy_without_render`). ([raw.githubusercontent.com](https://raw.githubusercontent.com/linem-davton/python-cookiecutter-minimal/main/cookiecutter.json))

## 🛠 Contributing

1. Fork & clone.
2. Create a virtualenv and install dev requirements: `pip install -r dev-requirements.txt`.
3. Run `pre-commit install`.
4. Open a pull request – CI will run linting and template self‑tests.

## License

This template itself is distributed under the MIT License. Generated projects will use whichever license you select at creation time.
