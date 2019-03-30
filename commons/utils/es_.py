import pymysql
import requests
from pymysql.cursors import DictCursor

from FoodsAdminServer.settings import DATABASES

# 哪些数据添加到搜索引擎
sql = """
select c.name as cate_name, 
       f.id, f.name,f.price,f.image
from t_category c
join t_foods f on (c.id=f.category_id)
"""

HOST = 'localhost'  # ES 的服务器地址
PORT = 9200             # ES RESTful 端口

URL_ = 'http://%s:%d' %(HOST, PORT)


def init_index(index_name):
    url = URL_+ '/%s' % index_name

    # 判断当前的index_name索引是否已存在
    resp = requests.get(url)
    data = resp.json()
    if data.get('status') == 404:
        # PUT , 添加索引
        params = {
            'settings': {
                "number_of_shards": 5,
                "number_of_replicas": 1
            }
        }
        resp = requests.request('PUT', url, json=params)
        data = resp.json()
        if data.get('acknowledged'):
            print('%s 索引创建成功' % index_name)
        else:
            print('%s 索引创建失败' % index_name)
    else:
        print('---- 索引已存在----')


def init_docs(index_name, type_name):
    config = DATABASES.get('default')
    del config['ENGINE']
    config['DB'] = config.pop('NAME')

    config = {key.lower():value for key, value in config.items()}

    db = pymysql.Connect(**config)
    with db.cursor(cursor=DictCursor) as c:
        c.execute(sql)
        for row_data in c.fetchall():
            #  添加索引文档
            url = URL_+ '/%s/%s/%s' % (index_name, type_name, row_data['id'])
            resp = requests.post(url, json=row_data)
            resp_result = resp.json()
            if resp_result.get('created'):
                print('----添加 %s-> %s 成功---' % (row_data['cate_name'], row_data['name']))
            else:
                print('----添加 %s-> %s 失败---' % (row_data['cate_name'], row_data['name']))

def update_doc(index_name, type_name, item):
    url = URL_ + '/%s/%s/%s' % (index_name, type_name, item['id'])
    requests.request('PUT', url, json=item)


def delete_doc(index_name, type_name, id_):
    url = URL_ + '/%s/%s/%s' % (index_name, type_name, id_)
    print('-->', url)
    requests.request('DELETE', url)



def add_doc(index_name, type_name, item):
    """
    :param index_name:
    :param type_name:
    :param item:  {'cate_name': , 'id': , 'name': , 'price':, 'image':}
    :return:
    """
    url = URL_ + '/%s/%s/%s' % (index_name, type_name, item['id'])
    resp = requests.post(url, json=item)
    resp_result = resp.json()
    if resp_result.get('created'):
        print('----添加 %s-> %s 成功---' % (item['cate_name'], item['name']))
    else:
        print('----添加 %s-> %s 失败---' % (item['cate_name'], item['name']))


if __name__ == '__main__':
    init_index('foods_site')
    init_docs('foods_site', 'foods')