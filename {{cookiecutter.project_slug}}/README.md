# {{ cookiecutter.project_name }}

{% if cookiecutter.open_source_license == "MIT" -%}
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
{% endif -%}
{% if cookiecutter.open_source_license == "BSD-3" -%}
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
{% endif -%}
{% if cookiecutter.license == "GPL-3.0" -%}
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
{% endif -%}
{% if cookiecutter.license == "LGPL-3.0" -%}
[![License: LGPL v3](https://img.shields.io/badge/License-LGPL%20v3-blue.svg)](https://www.gnu.org/licenses/lgpl-3.0)
{% endif -%}
{% if cookiecutter.open_source_license == "Apache-2.0" -%}
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
{% endif -%}

{% if cookiecutter.pypi_release != "No" -%}
[![PyPI Release](https://img.shields.io/pypi/v/{{ cookiecutter.project_slug }}.svg)](https://pypi.org/project/{{ cookiecutter.project_slug }})
{% endif -%}

{% if cookiecutter.readthedocs == "Yes" -%}

<!-- prettier-ignore -->
[![Documentation Status](https://readthedocs.org/projects/{{ cookiecutter.project_slug|replace('-', '_') }}/badge/)](https://{{ cookiecutter.project_slug|replace('-', '_') }}.readthedocs.io/)
{% endif -%}
