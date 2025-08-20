from django.contrib import admin
from .models import Player, Criminal, PlayerCase, City, Place, Witness, Clue, WitnessResponse

# Register your models here.

admin.site.register(Player)
admin.site.register(Criminal)
admin.site.register(PlayerCase)
admin.site.register(City)
admin.site.register(Place)
admin.site.register(Witness)
admin.site.register(Clue)
admin.site.register(WitnessResponse)