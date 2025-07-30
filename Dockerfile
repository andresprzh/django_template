
FROM python:3.12-slim


# Prevents Python from writing .pyc files to disc and enables unbuffered output
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


# Set work directory
ENV DJANGO_DIR=/django_template
WORKDIR $DJANGO_DIR

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements_admin/requirements.txt $DJANGO_DIR/requirements.txt
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Copy project files (uncomment in real projects)
# COPY . $DJANGO_DIR/
