from django.shortcuts import render
from django.http import HttpResponse
from .forms import LogForm,Take_Reservation
from .models import DrinksCategory,Drinks,Beer,Rum,Cider,Wine,WhiteRum,Vodka, MilkandMilkshake

# Create your views here.
def home(request):
    form = LogForm()
    if request.method == 'POST':
        form = LogForm(request.POST)
        if form.is_valid():
            form.save()
            form = LogForm()
    
    context = {'form':form}
    return render(request, 'home.html',context)

def Reservation(request):
    reserve = Take_Reservation()
    if request.method == 'POST':
        reserve = Take_Reservation(request.POST)
        if reserve.is_valid():
            reserve.save()
            reserve = Take_Reservation()
    
    context = {'reserve': reserve}
    return render(request, 'reserve.html',context)


# Drinks Divison
def drinksCategory_list(request):
    drinksCat = DrinksCategory.objects.all()
    return render(request, 'drinks.html', {'drinksCat': drinksCat})
def drinks_list(request):
    drinks = Drinks.objects.all()
    return render(request, 'drinks.html', {'drinks': drinks})

#Non-Alcoholic
def Milk_milkshakeslist(request):
    milks = MilkandMilkshake.objects.all()
    return render(request, 'milk_list.html', {'milks': milks})
# def Rum_list(request):
#     rums = Rum.objects.all()
#     return render(request,'rums.html',{'rums': rums})
# def Cider_list(request):
#     ciders = Cider.objects.all()
#     return render(request,'cider.html',{'ciders': ciders})
# def Wine_list(request):
#     wines = Wine.objects.all()
#     return render(request, 'wine.html',{'wines' : wines})
# def White_rum_list(request):
#     white_rums = WhiteRum.objects.all()
#     return render(request, 'white_rum.html',{'white_rums' : white_rums})
# def Vodka_list(request):
#     vodkas = Vodka.objects.all()
#     return render(request, 'vodka.html',{'vodkas' : vodkas})



# Alcoholic Drinks
def Beer_list(request):
    beers = Beer.objects.all()
    return render(request, 'beers.html',{'beers': beers})
def Rum_list(request):
    rums = Rum.objects.all()
    return render(request,'rums.html',{'rums': rums})
def Cider_list(request):
    ciders = Cider.objects.all()
    return render(request,'cider.html',{'ciders': ciders})
def Wine_list(request):
    wines = Wine.objects.all()
    return render(request, 'wine.html',{'wines' : wines})
def White_rum_list(request):
    white_rums = WhiteRum.objects.all()
    return render(request, 'white_rum.html',{'white_rums' : white_rums})
def Vodka_list(request):
    vodkas = Vodka.objects.all()
    return render(request, 'vodka.html',{'vodkas' : vodkas})


def about(request):
    # form = DemoForm()
    # return render(request, 'home.html',{'form': form})
    return HttpResponse("<h1>Menu For Little Lemon</h1>")

def menu(request):
    return HttpResponse("<h1>Menu For Little Lemon</h1>")

def book(request):
    return HttpResponse("<h1>Make a booking</h1>")
