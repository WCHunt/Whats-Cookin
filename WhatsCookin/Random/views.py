from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse
# Create your views here.

def Random(request):
    return render(request,"Random/Random.html")