---
name: rename-project
description: Rename the Django project and update all references.
file: .github/skills/rename_project/SKILL.md
---

## Summary

This skill will rename the Django project from `django_template` to a new name, and it will update all references to the old name in the project files.

## Instructions

- Take the new project name as input, this should be a valid Python package name (e.g., `my_project`).
- Rename the main project folder from `django_template/` to the new project name (e.g., `my_project/`). Do not create a new folder, just rename the existing one.
- Update the `name` variable in the `apps.py` file of the main project folder to reflect the new name (e.g., `name = 'my_project'`).
- Update the `ROOT_URLCONF` and `WSGI_APPLICATION` settings in the `base.py` file to reflect the new project name (e.g., `ROOT_URLCONF = 'my_project.urls'` and `WSGI_APPLICATION = 'my_project.wsgi.application'`).
- Update the `ASGI_APPLICATION` setting in the `base.py` file to reflect the new project name (e.g., `ASGI_APPLICATION = 'my_project.asgi.application'`).
- Update any import statements in the project that reference the old project name to the new project name (e.g., `from django_template import ...` to `from my_project import ...`).
- Update the `manage.py` file to reflect the new project name in the `DJANGO_SETTINGS_MODULE` environment variable (e.g., `os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'my_project.custom_settings.dev')`).
- rename the Dockerfile to reflect the new project name (e.g., change the `ENV DJANGO_DIR` variable to `ENV DJANGO_DIR=/my_project`).
- rename the container_name in the `docker-compose.yml` file to reflect the new project name (e.g., `container_name: my_project_web`). and also change the volume mapping to reflect the new project name (e.g., `./my_project:/app/my_project`).
- After renaming the project and updating all references, run the tests to ensure that everything is working correctly. You can run the tests with the following command:
  ```bash
  docker compose run web pytest
  ``` 
  try to run thetests in the docker container to ensure that the environment is consistent, if you cannot run the tests in the docker container, use a virtual environment and run the tests with `pytest` command.

## Restrictions

- **Do not** create a new folder for the project, just rename the existing folder from `django_template/` to the new project name.
- **Do not** change the structure of the project, only rename the main project folder and update the references to the old name.
- **Do not** change anything inside .github/ or .vscode/ folders, these folders are used for project configuration and should not be modified.
- **Do not** change the name of the apps or any other folder in the project, only change the name of the main project folder and the references to it.
- **Do not** change the name of the settings files, only update the references to the old project name in the settings files.
- **Do not** leave the old folder with the old name `django_template/`, if the folder is still in the project delete it. .