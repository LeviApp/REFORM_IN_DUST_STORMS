from django.urls import path
from . import views
from mic.models import City
cities = City.objects.all()
city = cities[0].name.replace(" ", "")
urlpatterns = [
    path('', views.home, name='mic-home'),
    path(f'{city}/', views.location, name='mic-location'),

]