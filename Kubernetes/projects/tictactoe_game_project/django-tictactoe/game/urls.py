from django.http import HttpResponse
from django.urls import path
from .views import index, move

def health(request): 
    return HttpResponse("OK")

urlpatterns = [
    path('', index, name='index'),
    path('api/move', move, name='move'),
    path('health', health, name='health'),
]
