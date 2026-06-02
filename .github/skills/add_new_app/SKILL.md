---
name: add-new-app
description: Create a new Django app within the project, this app will be loaded in the folder apps.
file: .github/skills/add_new_app/SKILL.md
---

## Summary

This is a minimal skill to create new apps in this project. It will create a new folder in `apps/` with the name of the app, and it will add the app to the `INSTALLED_APPS` in `settings.py`.

## Instructions

- Try to use the docker container to run the commands, if possible, to ensure that the environment is consistent.
- look for the service name for the django app in the docker-compose.yml file, it should be something like `web` or `django`.
- Use the `django-admin startapp` command to create the new app in the docker container.
- the command should be run with the `--user` flag to ensure that the files created have the correct permissions, and the `--rm` flag to remove the container after the command is executed.
- The command should look like this:
  ```bash
  docker compose run --rm --user "$(id -u):$(id -g)" web python manage.py startapp <app_name> apps/<app_name>
  ```
  Replace `<app_name>` with the name of your new app.
- The command to create new apps in django with docker compose does not return and output, to verify if the app works you can check if the folder was created in `apps/`.
- If docker cannot be used, use a virtual environment, if the virtual environment in venv, if there is not virtual environment, create it. Then activate the virtual environment  and create install the dependencies with `pip install -r requirements_admin/requirements.txt`, then run the command to create the app:
  ```bash
  python manage.py startapp <app_name> apps/<app_name>
  ```
- After creating the app, modify the `apps.py` file in the new app folder, and change the `name` variable to `apps.<app_name>`, this is required to ensure that the app is loaded correctly in the project.
- After creating the app and modify the `apps.py`, add the app to the `LOCAL_APPS` in the `base.py` file. The settings file is located in  custom_settint folder `<project_name>/custom_settings/`, this `LOCAL_APPS` variable is used to keep track of the apps that are created in the project, and it is added to the `INSTALLED_APPS` variable.
