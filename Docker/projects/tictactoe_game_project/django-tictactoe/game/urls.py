from django.urls import path
from .views import index, move

urlpatterns = [
    path('', index, name='index'),
    path('api/move', move, name='move'),
]
