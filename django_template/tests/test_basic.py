import pytest
from django.urls import reverse


class TestBasic:
    def test_swagger_ui(self, client):
        response = client.get(reverse('schema-swagger-ui'))
        assert response.status_code == 200
        html = response.content.decode('utf-8')
        assert '<title>Django API</title>' in html
