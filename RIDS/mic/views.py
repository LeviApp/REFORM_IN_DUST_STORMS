from django.shortcuts import render
from mic.adv import Caleb, location
from mic.room import Room, Responses, Witness, martha_responses, Martha
from mic.player import Player, witness_questions
# Create your views here.


def home(request):
    return render(request, 'mic/home.html')

def location(request):
    context = {
        'players': [Caleb]
    }
    return render(request, 'mic/location.html', context)