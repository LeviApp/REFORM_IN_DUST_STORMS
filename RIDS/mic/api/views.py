from rest_framework.response import Response
from rest_framework.decorators import api_view
from mic.models import Player, Criminal, City, Place, Witness, Responses, Clue, Case
from mic.api.serializers import CitySerializer

@api_view(['GET',])
def cities_api(request):
    try:
        cities = City.objects.all()
        print(cities)
    except City.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CitySerializer(cities, many=True)
        return Response(serializer.data)