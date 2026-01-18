from django.urls import path
from . import views
from .views import Reservation, drinks_list,Beer_list,Rum_list,Cider_list,Wine_list,White_rum_list,Vodka_list, Milk_milkshakeslist


urlpatterns = [
    path('', views.home, name="home"),
    path('drinks/', drinks_list, name='drinks_list'),
    path('reservation/',Reservation, name= "Reservation"),
    #Alcoholic
    path('beers/', Beer_list, name='Beer_list'),
    path('rums/',Rum_list, name='Rum_list'),
    path('cider/',Cider_list, name = 'Cider_list'),
    path('wines/', Wine_list, name = 'Wine_list'),
    path('whiteRums/', White_rum_list, name = 'White_rum_list'),
    path('Vodkas/', Vodka_list, name = 'Vodka_list'),
    #Non-Alcoholic
    path('MilkandMilkshake/', Milk_milkshakeslist , name = 'milks'),
    # path('milkshakes/',milk_list,name = 'milks'),
    # path('milkshakes/',milk_list,name = 'milks'),
    # path('milkshakes/',milk_list,name = 'milks'),
    # path('milkshakes/',milk_list,name = 'milks'),
    # path('milkshakes/',milk_list,name = 'milks'),



    path('aboutus/', views.about, name="about"),
    path('menu/', views.menu, name="menu"),
    path('book/', views.book, name="book"),
]
