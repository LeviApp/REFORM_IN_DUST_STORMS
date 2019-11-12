from django.shortcuts import render
from mic.adv import Caleb, Anastasia, cities
from mic.city import City, Responses, Witness, martha_responses, Martha
from mic.player import Player, witness_questions
# Create your views here.
from mic.forms import WitnessForm
from django import forms
import keyboard



def home(request):
    return render(request, 'mic/home.html')

def location(request):
    context = {
        'players': [Caleb, Anastasia],
        'witness_questions': WitnessForm(),
        'cities': cities,
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