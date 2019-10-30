from room import Room, Responses, Witness, martha_responses, Martha
from player import Player, witness_questions
# Declare all the rooms

location = {
    'Denver':  Room("Sheriff Headquarters",
                     "In front of you is a busy little town, people in the streets walk to and fro going about their business.", [Martha], []),

    'Louisville':    Room("Train Station", "Ahead, you see a train pulled into the station, passengers around you hurry to get ready for the long journey in front of them.", [], []),

    'Idaho Springs': Room("Indian Tribe", "A friendly Indian community is in view, Indian mothers pick vegetables from the garden while young Indian warriors practice hunting techniques.", [], []),

    'Cripple Creek':   Room("The Gold Rush", "You haven't heard? There is gold in these waters! You see the creek packed with fortune hunters.", [], []),

    'Fort Morgan': Room("Military Fort", "As you arrive, a massive military fort is in sight. Soldiers take part in military drills.", [], []),
}


# Link rooms together

location['Denver'].n_to = location['Louisville']
location['Denver'].s_to = location['Cripple Creek']
location['Denver'].w_to = location['Idaho Springs']
location['Denver'].e_to = location['Fort Morgan']

location['Louisville'].s_to = location['Denver']
location['Louisville'].sw_to = location['Idaho Springs']
location['Louisville'].se_to = location['Fort Morgan']

location['Idaho Springs'].ne_to = location['Louisville']
location['Idaho Springs'].e_to = location['Denver']
location['Idaho Springs'].se_to = location['Cripple Creek']

location['Cripple Creek'].ne_to = location['Fort Morgan']
location['Cripple Creek'].n_to = location['Denver']
location['Cripple Creek'].nw_to = location['Idaho Springs']

location['Fort Morgan'].w_to = location['Denver']
location['Fort Morgan'].nw_to = location['Louisville']
location['Fort Morgan'].sw_to = location['Cripple Creek']


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


Caleb = Player("Deputy", "Caleb Beckett", {}, {}, witness_questions, location['Denver'])

print(Caleb)

print(Caleb.room.description)

on_the_job = input("Type 'i' to start asking witnesses questions     ")

while on_the_job != 'q':
    print(Caleb.room.witnesses[0].description)
    Caleb.question_witness(Caleb.room.witnesses[0])