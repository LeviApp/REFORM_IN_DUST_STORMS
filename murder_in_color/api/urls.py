from django.urls import path
from murder_in_color.api.views import cities_api, city_api, players_api, player_api, criminals_api, criminal_api, cases_api, case_api, places_api, place_api, witnesses_api, witness_api, responses_api, response_api, clues_api, clue_api

app_name = 'murder_in_color'
urlpatterns = [
    path(f'cities/', cities_api, name='cities'),
    path(f'cities/<str:pk>/', city_api, name='city'),
    path(f'players/', players_api, name='players'),
    path(f'players/<str:pk>', player_api, name='player'),
    path(f'players/<str:pk>/update', player_api, name='player_update'),
    path(f'criminals/', criminals_api, name='criminals'),
    path(f'criminals/<str:pk>/', criminal_api, name='criminal'),
    path(f'cases/', cases_api, name='cases'),
    path(f'cases/<str:pk>/', case_api, name='case'),
    path(f'cases/<str:pk>/update/', case_api, name='case_update'),
    path(f'places/', places_api, name='places'),
    path(f'places/<str:pk>', place_api, name='place'),
    path(f'witnesses/', witnesses_api, name='witnesses'),
    path(f'witnesses/<str:pk>', witness_api, name='witness'),
    path(f'responses/', responses_api, name='responses'),
    path(f'responses/<str:pk>', response_api, name='response'),
    path(f'clues/', clues_api, name='clues'),
    path(f'clues/<str:pk>', clue_api, name='clue'),

]