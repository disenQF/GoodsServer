from FoodsAdminServer.celery import app

from utils import redis_


@app.task
def qbuy(foods_id, user_id):
    # 在Celery Worker中执行
    # 判断抢购数量是否已滿（过时）
    flag, status_code = redis_.is_qbuy(user_id)
    if flag:
        redis_.qbuy(user_id, foods_id)

    return redis_.status.get(status_code)
