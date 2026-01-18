from django import forms 
# from django.forms.widgets import NumberInput
from .models import Login, Reservation


# How the forms inputs save in the database #
class LogForm(forms.ModelForm):
    class Meta:
        model = Login
        fields = '__all__'  #import all the fields on the particular model
        
class Take_Reservation(forms.ModelForm):
    class Meta:
        model = Reservation
        fields = '__all__'
        widgets = {
            'date': forms.DateInput(attrs={'type': 'date'}),
            'time': forms.TimeInput(attrs={'type': 'time'})
        }



#### EXAMPLE OF FORMS ####

# Example How the forms are render in the web#


# class DemoForm(forms.Form):
#     Fev_dish =[
#     ('italian','Italian'),
#     ('greek','Grrek'),
# ]
#     name = forms.CharField(widget=forms.TextInput(attrs={'style': 'width: 300px; height:30px; font-size: 25px;'}))
#     email = forms.EmailField(label="Enter email",widget=forms.EmailInput(attrs={'style': 'width: 300px; height:30px; font-size: 25px;'}))
#     reservation_date =forms.DateField(widget=NumberInput(attrs={'type':'date','style': 'width: 200px;height:26px; font-size: 20px;'}))
#     Fev_dish = forms.ChoiceField(choices=Fev_dish,widget=forms.Select(attrs={'style': 'width: 300px;height:26px; font-size: 20px;'}))



# class Application(forms.Form):
    
#     StudentName = forms.CharField(label="Student Name",widget=forms.TextInput(attrs={'style': 'width: 300px; height:30px; font-size: 25px;'}))
#     Studentemail = forms.EmailField(label="Enter email",widget=forms.EmailInput(attrs={'style': 'width: 300px; height:30px; font-size: 25px;'}))
#     Exam =[
#     ('webjee','WBJEE'),
#     ('jeemains','JEE Mains'),
#     ('mcat','MCAT'),
#     ('gate','GATE'),
#     ('politechnic','POLITECHNIC'),
#     ('NA','NOT APPLICABLE'),
# ]
#     Exam = forms.ChoiceField(choices=Exam,widget=forms.Select(attrs={'style': 'width: 300px;height:26px; font-size: 20px;'}))
#     reservation_date =forms.DateField(help_text="<span style='font-size: 16px;'>If you don't give any of those exams, please select a date for booking the set.</span>",widget=NumberInput(attrs={'type':'date','style': 'width: 260px;height:26px; font-size: 20px;'}))