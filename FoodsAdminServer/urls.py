from django.conf.urls import url, include
from django.http import JsonResponse
from django.shortcuts import redirect, resolve_url

import xadmin as admin

def to_index(request, name, port):
    print(name, port)
    return JsonResponse({'name':name, 'port':port })

def re_index(request):
    return redirect('index', name='disen', port='123')


urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^ueditor/', include('DjangoUeditor.urls')),
    url(r'^index/(?P<name>\w+)/(?P<port>\d+)/', to_index, name='index'),
    url(r'^re_index/', re_index),
    url(r'^', lambda request: redirect('/admin/'))
]
