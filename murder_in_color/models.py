from django.db import models

class Criminal(models.Model):
    name = models.CharField(max_length=50)
    gender = models.CharField(max_length=50)
    race = models.CharField(max_length=50)
    height = models.CharField(max_length=50)
    age = models.CharField(max_length=50)
    weight = models.CharField(max_length=50)
    hair_color = models.CharField(max_length=50)
    face_feature = models.CharField(max_length=50)
    unique_feature = models.CharField(max_length=50)

    def __str__(self):
        return self.name
    
    
class City(models.Model):
    name = models.CharField(max_length=50)
    theme = models.CharField(max_length=50)
    description = models.TextField()
    travel_time = models.IntegerField()

    def __str__(self):
        return self.name

class Place(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField()
    city_id = models.ForeignKey(City, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

class Weapon(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.name
    
class Player(models.Model):
    user_id = models.CharField(max_length=50)
    rank = models.CharField(max_length=50)
    name = models.CharField(max_length=50)
    description = models.TextField()
    place_id = models.ForeignKey(Place, on_delete=models.CASCADE)

    def __str__(self):
        return self.name
    
class Witness(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField()
    place_id = models.ForeignKey(Place, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

class GeneralCase(models.Model):
    name = models.CharField(max_length=50, unique=True)
    criminal_id = models.ForeignKey(Criminal, on_delete=models.CASCADE)
    crime_place_id = models.ForeignKey(Place, on_delete=models.CASCADE)
    weapon_id = models.ForeignKey(Weapon, on_delete=models.CASCADE)
    witnesses = models.ManyToManyField(Witness, through='CaseWitness')
    
class PlayerCase(models.Model):
    general_case_id = models.ForeignKey(GeneralCase, on_delete=models.CASCADE)
    player_id = models.ForeignKey(Player, on_delete=models.CASCADE)
    days_left = models.IntegerField()
    evidence = models.IntegerField()
    signatures = models.IntegerField()
    warrant = models.BooleanField()
    notebook = models.TextField()
    solved = models.BooleanField()

    def __str__(self):
        return self.general_case.name
        
class DiscoveredFact(models.Model):
    player_case_id = models.ForeignKey(PlayerCase, on_delete=models.CASCADE)
    fact_type = models.CharField(max_length=50)  # e.g., 'hair_color', 'weapon'
    fact_value = models.CharField(max_length=255) # e.g., 'red', 'wrench'
    
class Clue(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField()
    place_id = models.ForeignKey(Place, on_delete=models.CASCADE)

    def __str__(self):
        return self.name
    
class GatheredClue(models.Model):
    player_case_id = models.ForeignKey(PlayerCase, on_delete=models.CASCADE)
    clue_id = models.ForeignKey(Clue, on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.case.player.name} gathered {self.clue.name} in {self.case.general_case.name}'
    
class Signature(models.Model):
    signer_name = models.CharField(max_length=50)
    # You could add a field here to describe the signer's role (e.g., 'Chief of Police').

class GatheredSignature(models.Model):
    player_case_id = models.ForeignKey(PlayerCase, on_delete=models.CASCADE)
    signature_id = models.ForeignKey(Signature, on_delete=models.CASCADE)
    date_gathered = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'{self.case.player.name} gathered a signature from {self.signature.signer_name}'

    
class CaseWitness(models.Model):
    general_case_id = models.ForeignKey(GeneralCase, on_delete=models.CASCADE)
    witness_id = models.ForeignKey(Witness, on_delete=models.CASCADE)
    
class WitnessResponse(models.Model):
    witness_id = models.ForeignKey(Witness, on_delete=models.CASCADE)
    general_case_id = models.ForeignKey(GeneralCase, on_delete=models.CASCADE)
    question_type = models.CharField(max_length=50)
    response_text = models.TextField()
    
class DeputyDialogue(models.Model):
    player_id = models.ForeignKey(Player, on_delete=models.CASCADE)
    general_case_id = models.ForeignKey(GeneralCase, on_delete=models.CASCADE)
    dialogue_type = models.CharField(max_length=50) # e.g., "question_suspect"
    dialogue_text = models.TextField()

    class Meta:
        # This prevents a player from having duplicate entries for the same dialogue type
        unique_together = ('player', 'dialogue_type', 'general_case')

    def __str__(self):
        return f"{self.player.name}'s {self.dialogue_type} dialogue"