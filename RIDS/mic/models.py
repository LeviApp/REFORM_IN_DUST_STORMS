from django.db import models

# Create your models here.

class Player(models.Model):
    rank = models.CharField(max_length=50, default="----")
    name = models.CharField(max_length=50, default="----")
    description = models.TextField()
    question_suspect = models.CharField(max_length=50, default="----")
    question_place = models.CharField(max_length=50, default="----")
    question_weapon = models.CharField(max_length=50, default="----")
    goodbye = models.CharField(max_length=50, default="----")
    place_id = models.IntegerField()
    city_id = models.IntegerField()

    def __str__(self):
        return self.name

class Criminal(models.Model):
    name = models.CharField(max_length=50, default="----")
    gender = models.CharField(max_length=50, default="----")
    race = models.CharField(max_length=50, default="----")
    height = models.CharField(max_length=50, default="----")
    age = models.CharField(max_length=50, default="----")
    weight = models.CharField(max_length=50, default="----")
    hair_color = models.CharField(max_length=50, default="----")
    face_feature = models.CharField(max_length=50, default="----")
    unique_feature = models.CharField(max_length=50, default="----")
    crime_place = models.CharField(max_length=50, default="----")
    weapon = models.CharField(max_length=50, default="----")

    def __str__(self):
        return self.name

class Case(models.Model):
    player = models.ForeignKey(Player, on_delete=models.CASCADE)
    case_name = models.CharField(max_length=50, default="----")
    days_left = models.IntegerField()
    evidence = models.IntegerField()
    signatures = models.IntegerField()
    warrant = models.BooleanField()
    name = models.CharField(max_length=50, default="----")
    gender = models.CharField(max_length=50, default="----")
    race = models.CharField(max_length=50, default="----")
    height = models.CharField(max_length=50, default="----")
    age = models.CharField(max_length=50, default="----")
    weight = models.CharField(max_length=50, default="----")
    hair_color = models.CharField(max_length=50, default="----")
    face_feature = models.CharField(max_length=50, default="----")
    unique_feature = models.CharField(max_length=50, default="----")
    crime_place = models.CharField(max_length=50, default="----")
    weapon = models.CharField(max_length=50, default="----")
    notebook = models.TextField()
    solved = models.BooleanField()

    def __str__(self):
        return self.name



class City(models.Model):
    name = models.CharField(max_length=50, default="----")
    description = models.TextField()
    travel_time = models.IntegerField()

    def __str__(self):
        return self.name

class Place(models.Model):
    name = models.CharField(max_length=50, default="----")
    description = models.TextField()
    city = models.ForeignKey(City, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

class Witness(models.Model):
    name = models.CharField(max_length=50, default="----")
    description = models.TextField()
    place = models.ForeignKey(Place, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

class Clue(models.Model):
    name = models.CharField(max_length=50, default="----")
    description = models.TextField()
    place = models.ForeignKey(Place, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Responses(models.Model):
    suspect = models.TextField()
    place = models.TextField()
    weapon = models.TextField()
    goodbye = models.TextField()
    witness = models.ForeignKey(Witness, on_delete=models.CASCADE)
