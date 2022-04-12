import sqlite3, time

from flask import session


def get_db_con():
    con = sqlite3.connect("data.db")
    return con


def dict_factory(cursor, row):
    d = {}
    for index, col in enumerate(cursor.description):
        d[col[0]] = row[index]
    return d


def test():
    sql = "select * from users"
    con = get_db_con()
    cu = con.cursor()
    cu.execute(sql)
    res = cu.fetchall()
    print(res)


def insert_user(user_name, email, password):
    con = get_db_con()
    cu = con.cursor()
    sql = 'INSERT INTO users(user_name, password, email, create_time) VALUES (?, ?, ?, ?)'
    create_time = int(time.time() * 1000)
    rows = cu.execute(sql, (user_name, password, email, create_time))
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def update_user(user_name, password):
    con = get_db_con()
    cu = con.cursor()
    id = session['id']
    sql = 'UPDATE users set user_name=?, password=? where id=?'
    rows = cu.execute(sql, (user_name, password, id))
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def insert_post(title, tag, description, content):
    user_name = session['user_name']
    email = session['email']
    con = get_db_con()
    cu = con.cursor()
    sql = 'INSERT INTO blog(title, tag, description, content, create_time, user_name, email) ' \
          'VALUES (?, ?, ?, ?, ?, ?, ?)'
    create_time = int(time.time() * 1000)
    rows = cu.execute(sql, (title, tag, description, content, create_time, user_name, email))
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def insert_activity(title, destination, activity_time, description, content):
    user_name = session['user_name']
    email = session['email']
    con = get_db_con()
    cu = con.cursor()
    sql = 'INSERT INTO activity(activity_name, email, create_time, activity_time, destination, description, user_name, content)' \
            'VALUES (?, ?, ?, ?, ?, ?, ?, ?)'
    create_time = int(time.time() * 1000)
    rows = cu.execute(sql, (title, email, create_time, activity_time, destination, description, user_name, content))
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def enroll(activity_id):
    user_name = session['user_name']
    email = session['email']
    con = get_db_con()
    cu = con.cursor()
    sql = 'INSERT INTO enroll(activity_id, email, create_time, user_name)' \
            'VALUES (?, ?, ?, ?)'
    create_time = int(time.time() * 1000)
    rows = cu.execute(sql, (activity_id, email, create_time, user_name))
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def get_enroll(activity_id):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT * from enroll where activity_id=? order by create_time desc'
    cu.execute(sql, [activity_id])
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def delete_enroll(activity_id):
    con = get_db_con()
    cu = con.cursor()
    email = session['email']
    sql = 'DELETE from enroll where activity_id=? and email=?'
    rows = cu.execute(sql, (activity_id, email))
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def delete_post(id):
    con = get_db_con()
    cu = con.cursor()
    sql = 'DELETE from blog where id=?'
    rows = cu.execute(sql, [id])
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def insert_comment(blog_id, rate, content):
    user_name = session['user_name']
    email = session['email']
    con = get_db_con()
    cu = con.cursor()
    sql = 'INSERT INTO comment(blog_id, user_name, rate, content, create_time, email) ' \
          'VALUES (?, ?, ?, ?, ?, ?)'
    create_time = int(time.time() * 1000)
    rows = cu.execute(sql, (blog_id, user_name, rate, content, create_time, email))
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def insert_activity_comment(activity_id, content):
    user_name = session['user_name']
    email = session['email']
    con = get_db_con()
    cu = con.cursor()
    sql = 'INSERT INTO activity_comment(activity_id, user_name, content, create_time, email) ' \
          'VALUES (?, ?, ?, ?, ?)'
    create_time = int(time.time() * 1000)
    rows = cu.execute(sql, (activity_id, user_name, content, create_time, email))
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def check_mail(mail):
    con = get_db_con()
    cu = con.cursor()
    sql = 'SELECT count(*) FROM users WHERE email=?'
    cu.execute(sql, [mail])
    res = cu.fetchone()
    cu.close()
    con.close()
    return res[0]


def check_login(mail, password):
    con = get_db_con()
    cu = con.cursor()
    sql = 'SELECT count(*) FROM users WHERE email=? and password=?'
    cu.execute(sql, (mail, password))
    res = cu.fetchone()
    cu.close()
    con.close()
    return res[0]


def get_user_info(mail, password):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT id, user_name, email, is_admin, password FROM users WHERE email=? and password=?'
    cu.execute(sql, (mail, password))
    res = cu.fetchone()
    cu.close()
    con.close()
    return res


def get_post_data(sort_by):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT * from blog order by create_time ' + sort_by
    cu.execute(sql)
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def get_activity_data():
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    # sql = 'SELECT * from activity order by create_time desc'
    sql = 'SELECT id, activity_name, email, user_name, create_time, destination, description, ' \
          '(SELECT count(*) from enroll where activity_id=a.id) count from activity a ' \
          'order by create_time desc'
    cu.execute(sql)
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def get_my_enroll_activity():
    email = session["email"]
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    # sql = 'SELECT * from activity where id in (SELECT activity_id from enroll where email=?) ' \
    #       'order by create_time desc'
    sql = 'SELECT id, activity_name, email, user_name, create_time, destination, description, ' \
          '(SELECT count(*) from enroll where activity_id=a.id) count from activity a ' \
          'where id in (SELECT activity_id from enroll where email=?)' \
          'order by create_time desc'
    cu.execute(sql, [email])
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def get_my_activity():
    email = session["email"]
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    # sql = 'SELECT * from activity where email=? order by create_time desc'
    sql = 'SELECT id, activity_name, email, user_name, create_time, destination, description, ' \
          '(SELECT count(*) from enroll where activity_id=a.id) count from activity a where email=? ' \
          'order by create_time desc'
    cu.execute(sql, [email])
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def order_by_activity_data(sort_by):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT id, activity_name, email, user_name, create_time, destination, description, ' \
          '(SELECT count(*) from enroll where activity_id=a.id) count from activity a ' \
          'order by ? desc'
    print(sql)
    cu.execute(sql, [sort_by])
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def delete_activity(id):
    con = get_db_con()
    cu = con.cursor()
    sql = 'DELETE from activity where id=?'
    rows = cu.execute(sql, [id])
    print(rows)
    con.commit()
    cu.close()
    con.close()
    delete_activity_enroll(id)
    return rows


def delete_activity_enroll(id):
    con = get_db_con()
    cu = con.cursor()
    sql = 'DELETE from enroll where activity_id=?'
    rows = cu.execute(sql, [id])
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def search_post_data(key, sort_by):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT * from blog where title like ? order by  create_time ' + sort_by
    cu.execute(sql, ['%' + key + '%'])
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def search_activity_data(key):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT * from activity where activity_name like ? order by create_time desc'
    cu.execute(sql, ['%' + key + '%'])
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def delete_post_comment(id):
    con = get_db_con()
    cu = con.cursor()
    sql = 'DELETE from comment where id=?'
    rows = cu.execute(sql, [id])
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def delete_activity_comment(id):
    con = get_db_con()
    cu = con.cursor()
    sql = 'DELETE from activity_comment where id=?'
    rows = cu.execute(sql, [id])
    print(rows)
    con.commit()
    cu.close()
    con.close()
    return rows


def get_post_comment(post_id):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT * from comment where blog_id=? order by create_time desc'
    cu.execute(sql, [post_id])
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def get_activity_comment(post_id):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT * from activity_comment where activity_id=? order by create_time desc'
    cu.execute(sql, [post_id])
    res = cu.fetchall()
    cu.close()
    con.close()
    return res


def get_post_detail(post_id):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT * from blog where id=?'
    cu.execute(sql, [post_id])
    res = cu.fetchone()
    cu.close()
    con.close()
    return res


def get_activity_detail(post_id):
    con = get_db_con()
    con.row_factory = dict_factory
    cu = con.cursor()
    sql = 'SELECT * from activity where id=?'
    cu.execute(sql, [post_id])
    res = cu.fetchone()
    cu.close()
    con.close()
    return res


if __name__ == '__main__':
    a = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(1641369419166 // 1000))
    print(a)

