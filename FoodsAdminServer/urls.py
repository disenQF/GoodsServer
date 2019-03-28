from django.conf.urls import url, include
from django.shortcuts import redirect

import xadmin as admin

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^ueditor/', include('DjangoUeditor.urls')),
    url(r'^', lambda request: redirect('/admin/'))
]
