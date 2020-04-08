from django.contrib import admin
from .models import Player, Criminal, Case, City, Place, Witness, Clue, Responses

# Register your models here.

admin.site.register(Player)
admin.site.register(Criminal)
admin.site.register(Case)
admin.site.register(City)
admin.site.register(Place)
admin.site.register(Witness)
admin.site.register(Clue)
admin.site.register(Responses)