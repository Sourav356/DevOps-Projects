from django.http import JsonResponse
from django.shortcuts import render
from .logic import check_winner

def index(request):
    return render(request, 'game.html')

def move(request):
    if request.method != 'POST':
        return JsonResponse({'error': 'POST required'}, status=405)
    data = request.POST
    board = [data.get(f'c{i}', '') for i in range(9)]
    player = data.get('player', 'X')
    try:
        pos = int(data.get('pos', -1))
    except ValueError:
        pos = -1

    if pos < 0 or pos > 8 or board[pos] in ['X', 'O']:
        return JsonResponse({'error': 'invalid move'}, status=400)

    board[pos] = player
    winner = check_winner(board)
    return JsonResponse({'board': board, 'winner': winner})
