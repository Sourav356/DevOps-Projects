from django.http import HttpResponse, HttpResponseNotFound


#Error Handling in Django
def handler404(request, exception):
    return HttpResponse("404: Page Not Found! <br><br> <button onclick="" href='';"">Go to the Home page</button>")

def home(request):
    # return HttpResponse("Littel Lemon")

    #if we use the upper comment line of code that is error free
    #But this line of code return you the 404 error code but there is 
    #No visible effect but when we inspect the page and go to the network section 
    #And reload the page we see that the page return actually 404 error
    return HttpResponseNotFound("Littel Lemon")