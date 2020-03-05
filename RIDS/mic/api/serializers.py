from rest_framework import serializers

from mic.models import City, Player, Criminal, Case, Place, Witness, Responses, Clue

class CitySerializer(serializers.ModelSerializer):
    class Meta:
        model = City
        fields = ('__all__')

class PlayerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Player
        fields = ('__all__')

class CriminalSerializer(serializers.ModelSerializer):
    class Meta:
        model = Criminal
        fields = ('__all__')

class CaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Case
        fields = ('__all__')

class PlaceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Place
        fields = ('__all__')

class WitnessSerializer(serializers.ModelSerializer):
    class Meta:
        model = Witness
        fields = ('__all__')

class ResponseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Responses
        fields = ('__all__')