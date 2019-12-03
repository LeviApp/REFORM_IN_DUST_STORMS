from django.shortcuts import render
# Create your views here.
from mic.forms import WitnessForm
from django import forms
import keyboard
from mic.models import Player, Criminal, City, Place, Witness, Responses, Clue, Case


def home(request):
    return render(request, 'mic/home.html')

def location(request):
    player = Player.objects.all() 
    city = City.objects.filter(id=player[0].city_id)
    place = Place.objects.filter(id=player[0].place_id)
    witness = Witness.objects.filter(place_id=place[0].id)
    low_place = Place.objects.raw(f"SELECT max(id) as id FROM mic_place WHERE id < {player[0].place_id}")
    high_place = Place.objects.raw(f"SELECT min(id) as id FROM mic_place WHERE id > {player[0].place_id}")
    print(low_place[0].id, high_place[0].id)
    context = {
        'player': player,
        'witness_questions': WitnessForm(),
        'city': city,
        'place': place,
        'high_place': high_place,
        'witness': witness,
        'answer': '',
        'visit': 'entrance'
    }

    if request.method == 'POST':
        context['witness_questions'] = WitnessForm(request.POST)
        context['visit'] = 'witness'
        if context['witness_questions'].is_valid():
            question = context['witness_questions'].cleaned_data['You']
            context['answer'] = Martha.answer(question)

    return render(request, 'mic/location.html', context)