from utils import rd
from datetime import datetime

qbuy_result_key = 'qbuy_%s' % datetime.now().strftime('%Y%m%d')
max_qbuy_size = 10  # 最大抢购份额

status = {
    0: '允许抢购',
    1: '已抢完',
    2: '今日已抢'
}


def is_qbuy(key):
    # key -> user_id
    # value -> goods_id
    if rd.hlen(qbuy_result_key) < max_qbuy_size :
        # 判断当天是否已抢
        if rd.hexists(qbuy_result_key, key):
            return False, 2 # '今日已抢'
        return True, 0 # '可以抢'

    return False, 1


def qbuy(key, value):
    rd.hset(qbuy_result_key, key, value)


def query_qbuy(key, value):
    # 查询某一个用户抢购的结果
    if rd.hexists(qbuy_result_key, key):
        r_value = rd.hget(qbuy_result_key, key) # b''
        if value == r_value.decode():
            return 200, '抢购成功'
        else:
            return 300, '今日只能抢购一次'
    else:
        if rd.hlen(qbuy_result_key) < max_qbuy_size:
            return 100, '正在抢购'
        return 400, '抢购失败'
