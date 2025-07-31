from __future__ import absolute_import, unicode_literals
import os
from celery import Celery
from django.conf import settings

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'django_template.custom_settings.dev')

app = Celery('django_template')

app.config_from_object('django.conf:settings', namespace='CELERY')

app.autodiscover_tasks()
