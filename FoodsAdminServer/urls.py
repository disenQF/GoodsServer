from django.urls import path

import xadmin as admin

urlpatterns = [
    path('admin/', admin.site.urls),
]
