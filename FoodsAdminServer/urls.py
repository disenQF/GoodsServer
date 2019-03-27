from django.conf.urls import url, include

import xadmin as admin

urlpatterns = [
    url('^admin/', admin.site.urls),
    url('^ueditor/', include('DjangoUeditor.urls'))
]
