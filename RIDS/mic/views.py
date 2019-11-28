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

    if keyboard.is_pressed('a'):
        print('a is PRESSED!')
    
    city = City.objects.filter(id=player[0].city_id)
    place = Place.objects.filter(id=player[0].place_id)
    witness = Witness.objects.filter(place_id=place[0].id)

    context = {
        'player': player,
        'witness_questions': WitnessForm(),
        'city': city,
        'place': place,
        'witness': witness,
        'answer': '',
        'visit': 'entrance'
    }

    if keyboard.is_pressed('a'):
        print('a is PRESSED!')

    if request.method == 'POST':
        context['witness_questions'] = WitnessForm(request.POST)
        context['visit'] = 'witness'
        if context['witness_questions'].is_valid():
            question = context['witness_questions'].cleaned_data['You']
            context['answer'] = Martha.answer(question)

    return render(request, 'mic/location.html', context)