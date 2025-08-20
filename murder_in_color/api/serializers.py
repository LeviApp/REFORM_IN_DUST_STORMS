from rest_framework import serializers

from murder_in_color.models import City, Player, Criminal, PlayerCase, Place, Witness, WitnessResponse, Clue

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

class PlayerCaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = PlayerCase
        fields = ('__all__')

class PlaceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Place
        fields = ('__all__')

class WitnessSerializer(serializers.ModelSerializer):
    class Meta:
        model = Witness
        fields = ('__all__')

class WitnessResponseSerializer(serializers.ModelSerializer):
    class Meta:
        model = WitnessResponse
        fields = ('__all__')

class ClueSerializer(serializers.ModelSerializer):
    class Meta:
        model = Clue
        fields = ('__all__')