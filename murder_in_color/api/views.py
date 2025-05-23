from rest_framework.response import Response
from rest_framework.decorators import api_view
from murder_in_color.models import Player, Criminal, City, Place, Witness, Responses, Clue, Case
from murder_in_color.api.serializers import CitySerializer, PlayerSerializer, CriminalSerializer, CaseSerializer, PlaceSerializer, WitnessSerializer, ResponseSerializer, ClueSerializer
from django.http import HttpResponse
from rest_framework import status

@api_view(['GET', 'POST'])
def cities_api(request):
    try:
        cities = City.objects.all()
    except City.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CitySerializer(cities, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CitySerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        return Response(serializer.data)

@api_view(['GET', 'PATCH', 'DELETE'])
def city_api(request, pk):
    try:
        city = City.objects.get(id=pk)
    except City.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CitySerializer(city, many=False)
        return Response(serializer.data)
    
    elif request.method == 'PATCH':
        serializer = CitySerializer(city, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST )

    elif request.method == 'DELETE':
        city.delete()    
        return Response("City Deleted")

@api_view(['GET', 'POST'])
def players_api(request):
    try:
        players = Player.objects.all()

    except Player.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PlayerSerializer(players, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = PlayerSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        return Response(serializer.data)

@api_view(['GET', "PATCH", "DELETE"])
def player_api(request, pk):
    try:
        player = Player.objects.get(id=pk)
    except Player.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PlayerSerializer(player, many=False)
        return Response(serializer.data)

    elif request.method == 'PATCH':
        serializer = PlayerSerializer(player, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST )

    elif request.method == 'DELETE':
        player.delete()    
        return Response("Player Deleted")

@api_view(['GET',])
def filtered_players_api(request):
    value = request.headers['userid']
    try:
        player = Player.objects.filter(user_id=value)
    except Player.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PlayerSerializer(player, many=True)
        return Response(serializer.data)

@api_view(['GET', 'POST'])
def criminals_api(request):
    try:
        criminals = Criminal.objects.all()
    except Criminal.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CriminalSerializer(criminals, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CriminalSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        return Response(serializer.data)

@api_view(['GET', 'PATCH', 'DELETE'])
def criminal_api(request, pk):
    try:
        criminal = Criminal.objects.get(id=pk)
    except Criminal.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CriminalSerializer(criminal, many=False)
        return Response(serializer.data)
    
    elif request.method == 'PATCH':
        serializer = CriminalSerializer(criminal, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST )

    elif request.method == 'DELETE':
        criminal.delete()    
        return Response("Criminal Deleted")

@api_view(['GET', 'POST'])
def cases_api(request):
    try:
        cases = Case.objects.all()
    except Case.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CaseSerializer(cases, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = CaseSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        return Response(serializer.data)
        
@api_view(['GET', 'PATCH', 'DELETE'])
def case_api(request, pk):
    try:
        case = Case.objects.get(id=pk)
    except Case.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CaseSerializer(case, many=False)
        return Response(serializer.data)

    elif request.method == 'PATCH':
        serializer = CaseSerializer(case, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST )

    elif request.method == 'DELETE':
        case.delete()    
        return Response("Case Deleted")

@api_view(['GET',])
def filtered_cases_api(request):
    value = request.headers['userid']
    try:
        case = Case.objects.filter(user_id=value)
    except Case.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CaseSerializer(case, many=True)
        return Response(serializer.data)

@api_view(['GET', 'POST'])
def places_api(request):
    try:
        places = Place.objects.all()
    except Place.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PlaceSerializer(places, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = PlaceSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        return Response(serializer.data)

@api_view(['GET', 'PATCH', 'DELETE'])
def place_api(request, pk):
    try:
        place = Place.objects.get(id=pk)
    except Place.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PlaceSerializer(place, many=False)
        return Response(serializer.data)
    
    elif request.method == 'PATCH':
        serializer = PlaceSerializer(place, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST )

    elif request.method == 'DELETE':
        place.delete()    
        return Response("Place Deleted")

@api_view(['GET',])
def filtered_places_api(request):
    value = request.headers['cityid']
    try:
        places = Place.objects.filter(city=value)
    except Place.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PlaceSerializer(places, many=True)
        return Response(serializer.data)


@api_view(['GET', 'POST'])
def witnesses_api(request):
    try:
        witnesses = Witness.objects.all()
    except Witness.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = WitnessSerializer(witnesses, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = WitnessSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        return Response(serializer.data)


@api_view(['GET', 'PATCH', 'DELETE'])
def witness_api(request, pk):
    try:
        witness = Witness.objects.get(id=pk)
    except Witness.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = WitnessSerializer(witness, many=False)
        return Response(serializer.data)
    
    elif request.method == 'PATCH':
        serializer = WitnessSerializer(witness, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST )

    elif request.method == 'DELETE':
        witness.delete()    
        return Response("Witness Deleted")

@api_view(['GET',])
def filtered_witness_api(request):
    value = request.headers['placeid']

    try:
        witness = Witness.objects.filter(place=value)
    except Witness.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = WitnessSerializer(witness, many=True)
        return Response(serializer.data)

@api_view(['GET', 'POST'])
def responses_api(request):
    try:
        responses = Responses.objects.all()
    except Responses.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = ResponseSerializer(responses, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = ResponseSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        return Response(serializer.data)

@api_view(['GET', 'PATCH', 'DELETE'])
def response_api(request, pk):
    try:
        response = Responses.objects.get(id=pk)
    except Responses.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = ResponseSerializer(response, many=False)
        return Response(serializer.data)
    
    elif request.method == 'PATCH':
        serializer = ResponseSerializer(response, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST )

    elif request.method == 'DELETE':
        response.delete()    
        return Response("Response Deleted")

@api_view(['GET',])
def filtered_responses_api(request):
    value = request.headers['witnessid']

    try:
        responses = Responses.objects.filter(witness=value)
    except Responses.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = ResponseSerializer(responses, many=True)
        return Response(serializer.data)

@api_view(['GET', 'POST'])
def clues_api(request):
    try:
        clues = Clue.objects.all()
    except Clue.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = ClueSerializer(clues, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = ClueSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
        return Response(serializer.data)

@api_view(['GET', 'PATCH', 'DELETE'])
def clue_api(request, pk):
    try:
        clue = Clue.objects.get(id=pk)
    except Clue.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = ClueSerializer(clue, many=False)
        return Response(serializer.data)
    
    elif request.method == 'PATCH':
        serializer = ClueSerializer(clue, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST )

    elif request.method == 'DELETE':
        clue.delete()    
        return Response("Clue Deleted")
    

@api_view(['GET',])
def filtered_clues_api(request):
    value = request.headers['witnessid']
    try:
        clue = Clue.objects.filter(place=value)
    except Clue.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = ClueSerializer(clue, many=True)
        return Response(serializer.data)