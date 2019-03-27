import xadmin

from foods.models import Category, Foods


# Register your models here.

class CategoryAdmin():
    list_display = ('name', 'parent', 'order_seq')


class FoodsAdmin():
    list_display = ('name', 'price', 'category')

    # 哪一个字段，使用ueditor样式
    style_fields = {'info': 'ueditor'}


xadmin.site.register(Category, CategoryAdmin)
xadmin.site.register(Foods, FoodsAdmin)
