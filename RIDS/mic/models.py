from django.db import models

# Create your models here.

class Player(models.Model):
    rank = models.CharField(max_length=40)
    name = models.CharField(max_length=40)
    description = models.TextField()
    place = models.TextField()
    weapon = models.TextField()
    goodbye = models.TextField()
    place_id = models.IntegerField()
    city_id = models.IntegerField()
    days_left = models.IntegerField()
    evidence = models.IntegerField()
    warrant = models.BooleanField()

    def __str__(self):
        return self.name

class Criminal(models.Model):
    name = models.CharField(max_length=40)
    gender = models.CharField(max_length=40)
    race = models.CharField(max_length=40)
    height = models.CharField(max_length=40)
    age = models.CharField(max_length=40)
    weight = models.CharField(max_length=40)
    hair_color = models.CharField(max_length=40)
    face_feature = models.CharField(max_length=40)
    unique_feature = models.CharField(max_length=40)
    crime_place = models.CharField(max_length=40)
    weapon = models.CharField(max_length=40)

    def __str__(self):
        return self.name

class Case(models.Model):
    player = models.ForeignKey(Player, on_delete=models.CASCADE)
    case_name = models.CharField(max_length=40)
    name = models.CharField(max_length=40)
    gender = models.CharField(max_length=40)
    race = models.CharField(max_length=40)
    height = models.CharField(max_length=40)
    age = models.CharField(max_length=40)
    weight = models.CharField(max_length=40)
    hair_color = models.CharField(max_length=40)
    face_feature = models.CharField(max_length=40)
    unique_feature = models.CharField(max_length=40)
    crime_place = models.CharField(max_length=40)
    weapon = models.CharField(max_length=40)
    solved = models.BooleanField()

    def __str__(self):
        return self.name



class City(models.Model):
    name = models.CharField(max_length=40)
    description = models.TextField()
    travel_time = models.IntegerField()

    def __str__(self):
        return self.name

class Place(models.Model):
    name = models.CharField(max_length=40)
    description = models.TextField()
    city = models.ForeignKey(City, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

class Witness(models.Model):
    name = models.CharField(max_length=40)
    description = models.TextField()
    place = models.ForeignKey(Place, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

class Clue(models.Model):
    name = models.CharField(max_length=40)
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
