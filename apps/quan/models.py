from django.db import models

# Create your models here.
class QaunActive(models.Model):
    publish_date = models.DateField(verbose_name='发布时间',
                                    auto_now_add=True)

    valid_days = models.IntegerField(verbose_name='有效天数',
                                     default=30)

    volumns = models.IntegerField(verbose_name='限发量',
                                  default=10000)

    title = models.CharField(verbose_name='活动名称',
                             max_length=200)

    note = models.TextField(verbose_name='备注',
                            null=True,
                            blank=True)  # 后台表单提交时的验证是否为空
    def __str__(self):
        return self.title

    class Meta:
        db_table = 't_quan_active'
        verbose_name = '优惠劵活动'
        verbose_name_plural = verbose_name
        ordering = ['-publish_date']


class QuanInfo(models.Model):
    active = models.ForeignKey(QaunActive,
                               verbose_name='所属活动',
                               on_delete=models.CASCADE)

    quan_num = models.CharField(verbose_name='编号', max_length=20)
    rate = models.FloatField(verbose_name='折扣率', default=0.9)
    title = models.CharField(verbose_name='标题', max_length=50)

    def __str__(self):
        return self.title


    class Meta:
        db_table = 't_quan_info'
        verbose_name = '优惠劵详情'
        verbose_name_plural = verbose_name