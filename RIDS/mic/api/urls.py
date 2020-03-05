from django.urls import path
from mic.api.views import cities_api

app_name = 'mic'
urlpatterns = [
    path(f'cities/', cities_api, name='cities')
]