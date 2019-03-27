import os
from django.db import models

from DjangoUeditor.models import UEditorField

from utils import md5_

# Create your models here.
# 食物的分类(家常菜谱-> 家常菜/凉菜)
class Category(models.Model):
    name = models.CharField(max_length=50,
                            verbose_name='分类名')
    order_seq = models.IntegerField(verbose_name='排行')

    # 自关联
    parent = models.ForeignKey('Category',
                               verbose_name='所属分类',
                               on_delete=models.CASCADE,
                               null=True,
                               blank=True)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 't_category'
        verbose_name = '食物分类'
        verbose_name_plural = verbose_name
        ordering = ['order_seq']


# 解决 上传图片的文件名改为 md5编码的32字符串
def get_image_name(instance, filename):

    print('---get_image_name-----')
    return 'foods/%s%s' % (md5_.format_md5(filename),
                           os.path.splitext(filename)[-1])

class Foods(models.Model):
    name = models.CharField(verbose_name='食物名称',
                            max_length=100)

    price = models.FloatField(verbose_name='价格',
                              default=1.0)

    step_minute = models.IntegerField(verbose_name='所需时间(分钟)')

    # upload_to 相对于 MEDIA_ROOT
    image = models.ImageField(verbose_name='图片',
                              upload_to=get_image_name,
                              blank=True)

    info = UEditorField(verbose_name='详情',
                        width=480, height=400,
                        blank=True,
                        default='',
                        toolbars='mini',
                        imagePath='ueditor',
                        filePath='ueditor',
                        )

    # 食物的分类
    category = models.ForeignKey(Category,
                                 verbose_name='分类',
                                 on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 't_foods'
        verbose_name = '菜谱'
        verbose_name_plural = verbose_name
