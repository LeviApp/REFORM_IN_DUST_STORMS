from mic.room import Room, Responses, Witness, martha_responses, Martha
from mic.player import Player, witness_questions
# Declare all the rooms

places = {
    'Denver':  Room("Denver: Sheriff Headquarters",
                     "In front of you is a busy little town, people in the streets walk to and fro going about their business.", [Martha], []),

    'Louisville':    Room("Louisville: The Train Station", "Ahead, you see a train pulled into the station, passengers around you hurry to get ready for the long journey in front of them.", [], []),

    'Idaho Springs': Room("Idaho Springs: The Indian Tribe", "A friendly Indian community is in view, Indian mothers pick vegetables from the garden while young Indian warriors practice hunting techniques.", [], []),

    'Cripple Creek':   Room("Cripple Creek: The Gold Rush", "You haven't heard? There is gold in these waters! You see the creek packed with fortune hunters.", [], []),

    'Fort Morgan': Room("Fort Morgan: The Military Fort", "As you arrive, a massive military fort is in sight. Soldiers take part in military drills.", [], []),
}


# Link rooms together

places['Denver'].n_to = places['Louisville']
places['Denver'].s_to = places['Cripple Creek']
places['Denver'].w_to = places['Idaho Springs']
places['Denver'].e_to = places['Fort Morgan']

places['Louisville'].s_to = places['Denver']
places['Louisville'].sw_to = places['Idaho Springs']
places['Louisville'].se_to = places['Fort Morgan']

places['Idaho Springs'].ne_to = places['Louisville']
places['Idaho Springs'].e_to = places['Denver']
places['Idaho Springs'].se_to = places['Cripple Creek']

places['Cripple Creek'].ne_to = places['Fort Morgan']
places['Cripple Creek'].n_to = places['Denver']
places['Cripple Creek'].nw_to = places['Idaho Springs']

places['Fort Morgan'].w_to = places['Denver']
places['Fort Morgan'].nw_to = places['Louisville']
places['Fort Morgan'].sw_to = places['Cripple Creek']


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


Caleb = Player("Deputy", "Caleb Beckett", {}, {}, witness_questions, places['Denver'])
Anastasia = Player("Deputy", "Anastasia Cooper", {}, {}, witness_questions, places['Denver'])

# print(Caleb)

# print(Caleb.room.description)

# on_the_job = input("Type 'i' to start asking witnesses questions     ")

# while on_the_job != 'q':
#     print(Caleb.room.witnesses[0].description)
#     Caleb.question_witness(Caleb.room.witnesses[0])