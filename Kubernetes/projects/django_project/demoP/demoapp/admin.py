from django.contrib import admin
from .models import Drinks
from .models import DrinksCategory
from .models import Beer
from .models import Wine
from .models import Cider
from .models import Rum
from .models import WhiteRum
from .models import Vodka
from .models import MilkandMilkshake, Softdrinks, FruitJuice, Tea,Coffee,Mocktail
from .models import Login,Reservation
from .models import FoodCategory, FoodItem

# Register your models here.
admin.site.register(Drinks)
admin.site.register(DrinksCategory)

# Register the Form #
admin.site.register(Login)
admin.site.register(Reservation)

# Drinks Types Models #

#Non-alcoholic
@admin.register(MilkandMilkshake)
class MilkandMilkshakeAdmin(admin.ModelAdmin):
    list_display = ('name','price')   #In the admin panle, it display as 2 columns
    search_fields =('name__startswith',)

@admin.register(Softdrinks)
class SoftdrinksAdmin(admin.ModelAdmin):
    list_display = ('Softdrinks_name','price')   #In the admin panle, it display as 2 columns
    search_fields =('Softdrinks_name__startswith',)

@admin.register(FruitJuice)
class FruitJuiceAdmin(admin.ModelAdmin):
    list_display = ('FruitJuice_name','price')   #In the admin panle, it display as 2 columns
    search_fields =('FruitJuice_name__startswith',)

@admin.register(Tea)
class TeaAdmin(admin.ModelAdmin):
    list_display = ('Tea','price')   #In the admin panle, it display as 2 columns
    search_fields =('Tea__startswith',)

@admin.register(Coffee)
class CoffeeAdmin(admin.ModelAdmin):
    list_display = ('Coffee_name','price')   #In the admin panle, it display as 2 columns
    search_fields =('Coffee_name__startswith',)

@admin.register(Mocktail)
class MocktailAdmin(admin.ModelAdmin):
    list_display = ('Mocktail_name','price')   #In the admin panle, it display as 2 columns
    search_fields =('Mocktail_name__startswith',)



#Alcoholic
# admin.site.register(Beer)
@admin.register(Beer)
class BeerAdmin(admin.ModelAdmin):
    list_display = ('beer_name','price')   #In the admin panle, it display as 2 columns
    search_fields =('beer_name__startswith',) #Add a search bar in the admin panle and search possible with the start letter of the object
admin.site.register(Wine)
# admin.site.register(Cider)
@admin.register(Cider)
class CIDERAdmin(admin.ModelAdmin):
    list_display = ('cider_name','price')   #In the admin panle, it display as 2 columns
    search_fields =('cider_name__startswith',)
admin.site.register(Rum)
admin.site.register(WhiteRum)
admin.site.register(Vodka)


# register Foods models#
admin.site.register(FoodCategory)
# admin.site.register(FoodItem)
@admin.register(FoodItem)
class FOODITEMAdmin(admin.ModelAdmin):
    list_display = ('name','get_categories','price')   #In the admin panle, it display as 2 columns
    search_fields =('name__startswith',)
    def get_categories(self, obj):
        return ", ".join([category.name for category in obj.categories.all()])

    get_categories.short_description = 'Categories'
