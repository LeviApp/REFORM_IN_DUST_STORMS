from mic.city import City, Responses, Witness, martha_responses, Martha
from mic.player import Player, witness_questions
# Declare all the rooms

cities = {
    'Denver':  City("Denver: Sheriff Headquarters",
                     "In front of you is a busy little town, people in the streets walk to and fro going about their business.", []),

    'Louisville':    City("Louisville: The Train Station", "Ahead, you see a train pulled into the station, passengers around you hurry to get ready for the long journey in front of them.", []),

    'Idaho Springs': City("Idaho Springs: The Indian Tribe", "A friendly Indian community is in view, Indian mothers pick vegetables from the garden while young Indian warriors practice hunting techniques.", []),

    'Cripple Creek':   City("Cripple Creek: The Gold Rush", "You haven't heard? There is gold in these waters! You see the creek packed with fortune hunters.", []),

    'Fort Morgan': City("Fort Morgan: The Military Fort", "As you arrive, a massive military fort is in sight. Soldiers take part in military drills.", []),
}


# Link rooms together

cities['Denver'].n_to = cities['Louisville']
cities['Denver'].s_to = cities['Cripple Creek']
cities['Denver'].w_to = cities['Idaho Springs']
cities['Denver'].e_to = cities['Fort Morgan']

cities['Louisville'].s_to = cities['Denver']
cities['Louisville'].sw_to = cities['Idaho Springs']
cities['Louisville'].se_to = cities['Fort Morgan']

cities['Idaho Springs'].ne_to = cities['Louisville']
cities['Idaho Springs'].e_to = cities['Denver']
cities['Idaho Springs'].se_to = cities['Cripple Creek']

cities['Cripple Creek'].ne_to = cities['Fort Morgan']
cities['Cripple Creek'].n_to = cities['Denver']
cities['Cripple Creek'].nw_to = cities['Idaho Springs']

cities['Fort Morgan'].w_to = cities['Denver']
cities['Fort Morgan'].nw_to = cities['Louisville']
cities['Fort Morgan'].sw_to = cities['Cripple Creek']


#
# Main
#

# Make a new player object that is currently in the 'outside' room.


# Write a loop that:
#
# * Prints the current room name
# * Prints the current description (the textwrap module might be useful here).
# * Waits for user input and decides what to do.
#
# If the user enters a cardinal direction, attempt to move to the room there.
# Print an error message if the movement isn't allowed.
#
# If the user enters "q", quit the game.


Caleb = Player("Deputy", "Caleb Beckett", {}, {}, witness_questions, cities['Denver'])
Anastasia = Player("Deputy", "Anastasia Cooper", {}, {}, witness_questions, cities['Denver'])

# print(Caleb)

# print(Caleb.room.description)

# on_the_job = input("Type 'i' to start asking witnesses questions     ")

# while on_the_job != 'q':
#     print(Caleb.room.witnesses[0].description)
#     Caleb.question_witness(Caleb.room.witnesses[0])