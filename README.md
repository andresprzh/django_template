# Django Template Project

This is a Django project template designed for rapid development and easy integration with CI/CD pipelines. It comes pre-configured with essential tools and libraries for building robust web APIs and background task processing, as well as a ready-to-use debugging setup for Visual Studio Code.

## Features

- **Django**: The core web framework for building scalable web applications.
- **Django REST Framework (DRF)**: Powerful and flexible toolkit for building Web APIs.
- **Celery**: Distributed task queue for background job processing.
- **django-celery-beat**: Periodic task scheduler for Celery.
- **drf-yasg**: Automated OpenAPI/Swagger documentation for your APIs.
- **debugpy**: Remote debugging support, pre-configured for VS Code.
- **pytest, pytest-django, pytest-cov**: Modern testing stack with coverage reporting, ready for local and CI use.

## Development Environment

- **VS Code Debugging**: The project is set up to allow remote debugging with VS Code using `debugpy`. When running in debug mode, the server listens on port 4000 for debugger attachments. Simply use the provided VS Code launch configuration to attach to the running container or process.

- **Docker & Docker Compose**: The template includes a `Dockerfile` and `docker-compose.yml` for easy local development and deployment. Environment variables are managed via `.env` files (excluded from version control).


## Project Structure

- `django_template/` - Main Django project code
- `django_template/custom_settings/` - Modular settings for different environments (e.g., `dev.py`, `base.py`)
- `requirements_admin/requirements.txt` - All Python dependencies
- `docker-compose.yml` and `Dockerfile` - Containerization setup
- `tests/` - Example and template tests using pytest

## Quick Start

1. **Clone the repository.**

2. **Configure environment variables:**
   - Create a `.env` file in the folder `conf/environments/.env` (this path is required by the Docker Compose setup).
   - The `.env` file should contain the following variables:
     - `USE_SQLITE` (set to `True` to use SQLite, or `False` to use PostgreSQL)
     - `SECRET_KEY` (your Django secret key)
     - `DEBUG` (set to `True` or `False`)
     - `DOMAIN_URL` (your domain, optional)
     - If using PostgreSQL (`USE_SQLITE=False`), also set:
       - `POSTGRES_DB` (database name)
       - `POSTGRES_USER` (database user)
       - `POSTGRES_PASSWORD` (database password)
       - `DB_HOST` (database host, e.g. `db` or `localhost`)
       - `DB_PORT` (database port, usually `5432`)

   - If `USE_SQLITE` is set to `True`, the project will use a local SQLite database. If set to `False`, it will use a PostgreSQL database and require the above environment variables to be set.

3. **Build and start the services:**
   ```bash
   docker compose up --build
   ```

4. **Run tests:**
   ```bash
   docker compose run web pytest
   ```

5. **Attach VSCode debugger** to port 4000 if needed.

## Notes

- The template is ready for extension with your own Django apps and API endpoints.
- The `pytest.ini` is pre-configured for CI environments, ensuring consistent test discovery and execution.
- Sensitive files and folders (such as `venv/`, `conf/environments/*`, and `important_data/`) are excluded from version control via `.gitignore`.

---

Feel free to use and adapt this template for your own Django projects!
