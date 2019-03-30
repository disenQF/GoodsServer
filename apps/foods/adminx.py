import xadmin
from django.contrib.admin import ModelAdmin
from foods.models import Category, Foods

from utils import es_
# Register your models here.

class CategoryAdmin():
    list_display = ('name', 'parent', 'order_seq')


class FoodsAdmin():
    list_display = ('name', 'price', 'category')

    # 哪一个字段，使用ueditor样式
    style_fields = {'info': 'ueditor'}

    def has_delete_permission(self, *args):

        if self.request.method == 'POST':
            # <QueryDict: {'csrfmiddlewaretoken': ['nTDLycAquKWOV8ggByPlZh2sidvzI2sSB1inQn8mguEA5FnyGzSaZzoOSwHuMoDD'], '_selected_action': ['24'], 'action': ['delete_selected'], 'post': ['yes']}>
            data = self.request.POST
            if data.get('action') == 'delete_selected':
                # ?? 目前调用2次， 需要优化
                post_yes = data.get('post')
                if post_yes and post_yes == 'yes':
                    id = data.get('_selected_action')
                    es_.delete_doc('foods_site', 'foods', id)
        return True


xadmin.site.register(Category, CategoryAdmin)
xadmin.site.register(Foods, FoodsAdmin)
