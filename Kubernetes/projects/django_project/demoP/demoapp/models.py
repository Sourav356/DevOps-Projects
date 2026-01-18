from django.db import models

# Create your models here.
class DrinksCategory(models.Model):
    category_name = models.CharField(max_length=200)

    def __str__(self):
        return self.category_name

class Drinks(models.Model):
    drink = models.CharField(max_length=200)
    price = models.IntegerField()
    category_id = models.ForeignKey(DrinksCategory, on_delete=models.PROTECT, default=None)

    def __str__(self):
        return self.drink

# Drinks Types Models #

#Non-Alcoholic
class MilkandMilkshake(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.name}, {self.price}"
    
class Softdrinks(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    Softdrinks_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.Softdrinks_name}, {self.price}"
    
class FruitJuice(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    FruitJuice_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.FruitJuice_name}, {self.price}"
    
class Tea(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    Tea = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.Tea}, {self.price}"
class Coffee(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    Coffee_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.Coffee_name}, {self.price}"
    
class Mocktail(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    Mocktail_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.Mocktail_name}, {self.price}"


#Alcoholic
class Beer(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    beer_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.beer_name}, {self.price}"  #In the admin panle the name and price of the beer is refelct as a string not as object

class Wine(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    wine_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.wine_name}, {self.price}"

class Cider(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    cider_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.cider_name}, {self.price}"

class Rum(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    rum_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.rum_name}, {self.price}"

class WhiteRum(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    white_rum_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.white_rum_name}, {self.price}"

class Vodka(models.Model):
    drink = models.ForeignKey(Drinks, on_delete=models.CASCADE)
    vodka_name = models.CharField(max_length=200)
    price = models.IntegerField()

    def __str__(self) -> str:
        return f"{self.vodka_name}, {self.price}"

# Store Form data into the database #
class Login(models.Model):
    first_name = models.CharField(max_length=200,)
    last_name = models.CharField(max_length=200)
    Email = models.EmailField(max_length=200)
    time_log = models.TimeField(help_text="Enter the login time!")

#Reservation
class Reservation(models.Model):
    first_name = models.CharField(max_length=200)
    last_name = models.CharField(max_length=200)
    ph_Number = models.CharField(max_length=15)
    Number_of_tables = models.IntegerField()
    person_count =models.IntegerField()
    date =models.DateTimeField()
    time = models.TimeField(help_text="Enter the arriving Time!")
    Note = models.CharField(max_length=250)



# Food modles #
class FoodCategory(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class FoodItem(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField()
    price = models.DecimalField(max_digits=8, decimal_places=2)
    categories = models.ManyToManyField(FoodCategory, related_name='items')

    def __str__(self):
        return self.name
    

# class Biriyani(models.Model):
#     name = models.CharField(max_length=100)
#     description = models.TextField()
#     price = models.DecimalField(max_digits=8, decimal_places=2)
#     categories = models.ManyToManyField(FoodCategory, related_name='biriyanis')

#     def __str__(self):
#         return self.name
