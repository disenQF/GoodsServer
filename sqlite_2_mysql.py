import pymysql
import sqlite3

sqlite3_conn = sqlite3.connect('db.sqlite3')

mysql_conn = pymysql.Connect(host='127.0.0.1',
                             port=3306,
                             user='root',
                             password='root',
                             db='foods_msj',
                             charset='utf8')

cursor = sqlite3_conn.cursor()
mysql_cursor = mysql_conn.cursor()

# 迁移分类表
# cursor.execute('select * from t_category')
# for row in cursor.fetchall():
#     mysql_cursor.execute('insert into t_category values(%s, %s, %s, %s)',
#                          args=row)
# mysql_conn.commit()

# # 迁移食物表
# cursor.execute('select * from t_foods')
# for row in cursor.fetchall():
#     id, name, price, step_minute, image, category_id, info = row
#     mysql_cursor.execute('insert into t_foods values(%s, %s, %s, %s, %s, %s, %s)',
#                          args=(id, name, price, step_minute, image, info, category_id))
#
# mysql_conn.commit()

# 迁移食物表
cursor.execute('select * from t_foods')
for row in cursor.fetchall():
    id, name, price, step_minute, image, category_id, info = row
    mysql_cursor.execute('insert into t_foods values(%s, %s, %s, %s, %s, %s, %s)',
                         args=(id, name, price, step_minute, image, info, category_id))

mysql_conn.commit()

