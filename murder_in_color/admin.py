from django.contrib import admin
from .models import Player, Criminal, PlayerCase, City, Place, Witness, Clue, WitnessResponse, Weapon, GeneralCase, PlayerCase, DiscoveredFact, GatheredClue, Signature, GatheredSignature, CaseWitness, DeputyDialogue

# Register your models here.

admin.site.register(Player)
admin.site.register(Criminal)
admin.site.register(City)
admin.site.register(Place)
admin.site.register(Witness)
admin.site.register(Clue)
admin.site.register(WitnessResponse)
admin.site.register(Weapon)
admin.site.register(GeneralCase)
admin.site.register(PlayerCase)
admin.site.register(DiscoveredFact)
admin.site.register(GatheredClue)
admin.site.register(Signature)
admin.site.register(GatheredSignature)
admin.site.register(CaseWitness)
admin.site.register(DeputyDialogue)
