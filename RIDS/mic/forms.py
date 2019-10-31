from django import forms

class WitnessForm(forms.Form):
    You = forms.ChoiceField(choices=[('suspect', 'What does the suspect look like?'), ('place', 'Do you remember where the crime took place?'), ('weapon', 'Did you see what kind of weapon the suspect used?'), ('goodbye', 'Have a wonderful day!' )])