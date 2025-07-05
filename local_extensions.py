import datetime

from jinja2.ext import Extension

#
# Export the current date
#


class YearExtension(Extension):
    def __init__(self, environment):
        super().__init__(environment)

        environment.globals.update({
            "current_year": datetime.datetime.now().year
        })
