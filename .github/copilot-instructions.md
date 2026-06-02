---
description: instructions used by the agent everyttime id add python code to the project, these instructions are used to ensure that the code is consistent with the project structure and guidelines.
applyTo: every python file in the project, this includes the files in the apps, the custom_settings, and any other python file that is added to the project
---


# Instructions for Adding Python Code to the Project

When adding new Python code to the project, please follow these guidelines to ensure consistency and maintainability:

- **Follow the existing project structure**: Place new code in the appropriate directories (e.g., `apps/` for Django apps, `django_template/` for project-level code, or any name that the current project uses for the main directory).
- **Adhere to coding standards**: Follow PEP 8 style guidelines for Python code. Use meaningful variable and function names, and include docstrings for all functions and classes.
- **User Docker for development**: Whenever possible, use the Docker environment to run commands and tests. This ensures that your code is tested in an environment consistent with production.
- **Update `INSTALLED_APPS`**: If you create a new Django app, make sure to add it to the `LOCAL_APPS` list in `base.py` and ensure that the `name` variable in the app's `apps.py` is set correctly (e.g., `apps.<app_name>`).
- **Write tests**: Include tests for any new functionality you add. Place tests in the `tests/` sub-directory for every app and use pytest for testing, the test should follow the naming convention `test_<function_name>.py`.
- **Document your code**: Include docstrings for all functions and classes to explain their purpose and usage.
- **Document all API endpoints**: If you are adding new API endpoints, make sure to document them using DRF and swagger with drf-yasg, this will ensure that the API documentation is up to date and accurate.

# Restrictions for adding code

-- **Do not** add any code that is not related to the project or that does not follow the guidelines mentioned above.
-- **Do not** add code that in the migration files, try to use the `makemigrations` command to generate the migration files instead of writing them manually. only add code to the migratioon files if I say so, and if I ask you to add code to the migration files, make sure to follow the structure of the existing migration files and do not add any code that is not related to the migration.
-- **Do not** Create new app unless I say so, try to add the code in the existing apps, if you need to create a new app, ask me first.