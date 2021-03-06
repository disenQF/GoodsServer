# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-03-27 09:16
from __future__ import unicode_literals

import DjangoUeditor.models
from django.db import migrations, models
import foods.models


class Migration(migrations.Migration):

    dependencies = [
        ('foods', '0002_foods'),
    ]

    operations = [
        migrations.AlterField(
            model_name='foods',
            name='image',
            field=models.ImageField(blank=True, upload_to=foods.models.get_image_name, verbose_name='图片'),
        ),
        migrations.AlterField(
            model_name='foods',
            name='info',
            field=DjangoUeditor.models.UEditorField(blank=True, default='', verbose_name='详情'),
        ),
    ]
