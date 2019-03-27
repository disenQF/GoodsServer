# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-03-27 09:16
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('quan', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='QuanInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quan_num', models.CharField(max_length=20, verbose_name='编号')),
                ('rate', models.FloatField(default=0.9, verbose_name='折扣率')),
                ('title', models.CharField(max_length=50, verbose_name='标题')),
                ('active', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='quan.QaunActive', verbose_name='所属活动')),
            ],
            options={
                'verbose_name': '优惠劵详情',
                'verbose_name_plural': '优惠劵详情',
                'db_table': 't_quan_info',
            },
        ),
    ]
