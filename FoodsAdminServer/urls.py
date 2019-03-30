import re

from django.conf.urls import url, include
from django.http import JsonResponse
from django.shortcuts import redirect, resolve_url, render

import xadmin as admin
from foods.models import Category, Foods

def to_index(request, name, port):
    print(name, port)
    return JsonResponse({'name':name, 'port':port })

def re_index(request):
    return redirect('index', name='disen', port='123')


def index(request):
    # 查询一级分类
    cates = Category.objects.filter(parent__isnull=True)
    foods_list = Foods.objects.all()

    return render(request, 'index.html', locals())

def login(request):
    if request.method == 'POST':
        phone = request.POST.get('phone')
        if re.match(r'1[3-9]\d{9}', phone):
            request.session['user_phone'] = phone
            return redirect('/index/')
        msg = '手机号码不正确'

    return render(request, 'login.html', locals())

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^ueditor/', include('DjangoUeditor.urls')),
    url(r'^index/(?P<name>\w+)/(?P<port>\d+)/', to_index, name='index'),
    url(r'^re_index/', re_index),
    url(r'^login/', login),
    url(r'^', index)
    # url(r'^', lambda request: redirect('/admin/'))
]
