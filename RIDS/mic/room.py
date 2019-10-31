# Implement a class to hold room information. This should have name and
# description attributes.

# description = {
#     gender:
#     height:
#     age:
#     weight:
#     hair_color:
#     unique_feature:
# }

class Responses:
    def __init__(self, suspect, place, weapon, goodbye):
        self.suspect = suspect
        self.place = place
        self.weapon = weapon
        self.goodbye = goodbye


class Witness:
    def __init__(self, name, description, location, responses):
        self.name = name
        self.description = description
        self.location = location
        self.responses = responses
    def answer(self,question):
        return f'{self.name}: {getattr(self.responses,question)}'


    
martha_responses = Responses('He was as tall as the trees!', 'I noticed that he had dried mud on his boots.', 'I am sorry, I did not notice anything.', 'I hope you find the crook soon!')
Martha = Witness('Martha', "You spot a beautiful young lady. She is average in height, but looks like a toothpick. Her black hair gleams in the sun. Her freckles remind you of starry skies."
, "Denver", martha_responses)



class Clue:
    def __init__(self, kind, description, location):
        self.kind = kind
        self.description = description
        self.location = location

class Room:
    def __init__(self, name, description, witnesses, clues):
        self.name = name
        self.description = description
        self.witnesses = witnesses
        self.clues = clues
