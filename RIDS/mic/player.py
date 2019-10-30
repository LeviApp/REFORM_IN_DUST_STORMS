# Write a class to hold player information, e.g. what room they are in
# currently.
from mic.room import Witness, Responses, Martha

witness_questions = {
    'suspect': 'You: What does the suspect look like?',
    'place': 'You: Do you remember where the crime took place?',
    'weapon': 'You: Did you see what kind of weapon the suspect had?',
    'goodbye': 'You: Have a wonderful day!'
}


class Player:
    def __init__(self, rank, name, evidence, warrent, questions, room):
        self.rank = rank
        self.name = name
        self.evidence = evidence
        self.warrent = warrent
        self.questions = witness_questions
        self.room = room

    def __str__(self):
        return f"Howdy, {self.rank} {self.name}. We still need to gather enough evidence to catch the crook. Don't let them get away!"

    def question_witness(self, w):
        Frage = input("Ask witness about: suspect, place, or weapon.  ")
 
        while Frage != "goodbye":
            print(self.questions[Frage])
            w.answer(Frage)
            Frage = input("Ask witness about: suspect, place, or weapon.  ")

    


#     gender:
#     height:
#     age:
#     weight:
#     hair_color:
#     unique_feature: