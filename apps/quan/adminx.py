import xadmin
from xadmin import views

from quan.models import QaunActive, QuanInfo
# Register your models here.
class QaunActiveAdmin():
    list_display = ['title',
                    'volumns',
                    'publish_date',
                    'valid_days']

class QuanInfoAdmin():
    list_display = ('title', 'active', 'rate', 'quan_num')


# 将模型类 添加到 后台显示， 并且给出定制显示的类
xadmin.site.register(QaunActive,  QaunActiveAdmin)
xadmin.site.register(QuanInfo, QuanInfoAdmin)
