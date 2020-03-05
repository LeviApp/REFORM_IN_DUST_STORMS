from rest_framework.response import Response
from rest_framework.decorators import api_view
from mic.models import Player, Criminal, City, Place, Witness, Responses, Clue, Case
from mic.api.serializers import CitySerializer, PlayerSerializer

@api_view(['GET',])
def cities_api(request):
    try:
        cities = City.objects.all()
    except City.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CitySerializer(cities, many=True)
        return Response(serializer.data)

@api_view(['GET',])
def players_api(request):
    try:
        players = Player.objects.all()
    except Player.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PlayerSerializer(players, many=True)
        return Response(serializer.data)