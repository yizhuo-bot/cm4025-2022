from flask import Flask, request, session, url_for
from flask import render_template
import json
import datetime
import random
from werkzeug.utils import secure_filename, redirect
from PIL import Image
from flask_cors import *
import json
import os

import db

app = Flask(__name__)
app.secret_key = 'blog_key'


SUCCESS_CODE = "0000"  # ok
LOGIN_CODE = "9000"  # need sign in
EXIST_CODE = "9001"  # email had been signed up
LOGIN_ERROR = "9002"  # wrong mail or password
VERIFY_CODE_ERROR = "9003"
PERMISSION_ERROR = "9999" # need login


CORS(app, supports_credentials=True)


@app.route('/')
def hello_world():
    return redirect(url_for('home'))


@app.route('/doRegister', methods=['post'])
def do_register():
    data = json.loads(request.get_data(as_text=True))
    email = data.get('email')
    password = data.get('password')
    user_name = data.get('userName')
    is_exist = db.check_mail(email)
    if is_exist == 1:
        return EXIST_CODE
    row = db.insert_user(user_name, email, password)
    session['user_name'] = data.get('userName')
    session['email'] = data.get('email')
    print(row)
    return SUCCESS_CODE


@app.route('/doUpdateProfile', methods=['post'])
def do_update_profile():
    data = json.loads(request.get_data(as_text=True))
    password = data.get('password')
    user_name = data.get('userName')
    row = db.update_user(user_name, password)
    session['user_name'] = user_name
    session['email'] = data.get('email')
    print(row)
    return SUCCESS_CODE


@app.route('/doLogin', methods=['post'])
def do_login():
    mail = request.form['email']
    password = request.form['password']
    res = db.check_login(mail, password)
    if res == 1:
        info = db.get_user_info(mail, password)
        print(info)
        session['id'] = info['id']
        session['user_name'] = info['user_name']
        session['email'] = info['email']
        session['password'] = info['password']
        session['is_admin'] = info['is_admin']
        return redirect(url_for('home'))
    return redirect(url_for('login_error'))


@app.route('/doCreatPost', methods=['post'])
def do_create_post():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    title = data.get('title')
    tag = data.get('tag')
    description = data.get('description')
    content = data.get('content')
    db.insert_post(title, tag, description, content)
    return SUCCESS_CODE


@app.route('/doCreateActivity', methods=['post'])
def do_create_activity():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    title = data.get('title')
    activity_time = data.get('activity_time')
    destination = data.get('destination')
    description = data.get('description')
    content = data.get('content')
    db.insert_activity(title, destination, activity_time, description, content)
    return SUCCESS_CODE


@app.route('/deletePost', methods=['post'])
def do_delete_post():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    id = data.get('id')
    db.delete_post(id)
    return SUCCESS_CODE


@app.route('/deleteEnroll', methods=['post'])
def delete_enroll():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    activity_id = data.get('activity_id')
    db.delete_enroll(activity_id)
    return SUCCESS_CODE


@app.route('/deletePostComment', methods=['post'])
def delete_post_comment():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    id = data.get('id')
    db.delete_post_comment(id)
    return SUCCESS_CODE


@app.route('/deleteActivityComment', methods=['post'])
def delete_activity_comment():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    id = data.get('id')
    db.delete_activity_comment(id)
    return SUCCESS_CODE


@app.route('/deleteActivity', methods=['post'])
def do_delete_activity():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    activity_id = data.get('id')
    db.delete_activity(activity_id)
    return SUCCESS_CODE


@app.route('/insertComment', methods=['post'])
def do_insert_comment():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    blog_id = data.get('post_id')
    rate = data.get('rate')
    content = data.get('content')
    db.insert_comment(blog_id, rate, content)
    return SUCCESS_CODE


@app.route('/insertActivityComment', methods=['post'])
def do_insert_activity_comment():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    blog_id = data.get('post_id')
    content = data.get('content')
    db.insert_activity_comment(blog_id, content)
    return SUCCESS_CODE


@app.route('/insertEnroll', methods=['post'])
def insert_enroll():
    if 'email' not in session:
        return PERMISSION_ERROR
    data = json.loads(request.get_data(as_text=True))
    activity_id = data.get('activity_id')
    db.enroll(activity_id)
    return SUCCESS_CODE


@app.route('/getEnroll', methods=['post'])
def get_enroll():
    data = json.loads(request.get_data(as_text=True))
    activity_id = data.get('activity_id')
    data = db.get_enroll(activity_id)
    print(data)
    return to_json(data)


@app.route('/getPostData', methods=['post'])
def get_post():
    data = json.loads(request.get_data(as_text=True))
    sort_by = data.get('sortBy')
    data = db.get_post_data(sort_by)
    print(data)
    return to_json(data)


@app.route('/getActivityData', methods=['post'])
def get_activity():
    data = db.get_activity_data()
    print(data)
    return to_json(data)


@app.route('/getMyEnrollActivityData', methods=['post'])
def get_my_enroll_activity():
    data = db.get_my_enroll_activity()
    print(data)
    return to_json(data)


@app.route('/getMyActivityData', methods=['post'])
def get_my_activity():
    data = db.get_my_activity()
    print(data)
    return to_json(data)


@app.route('/orderByActivity', methods=['post'])
def get_my_activity_order_by():
    data = json.loads(request.get_data(as_text=True))
    sort_by = data.get('sortBy')
    data = db.order_by_activity_data(sort_by)
    print(data)
    return to_json(data)


@app.route('/searchPostData', methods=['post'])
def search_post():
    data = json.loads(request.get_data(as_text=True))
    key = data.get('key')
    sort_by = data.get('sortBy')
    data = db.search_post_data(key, sort_by)
    print(data)
    return to_json(data)


@app.route('/searchActivityData', methods=['post'])
def search_activity():
    data = json.loads(request.get_data(as_text=True))
    key = data.get('key')
    data = db.search_activity_data(key)
    print(data)
    return to_json(data)


@app.route('/getPostComment', methods=['post'])
def get_post_comment():
    data = json.loads(request.get_data(as_text=True))
    post_id = data.get('post_id')
    data = db.get_post_comment(post_id)
    print(data)
    return to_json(data)


@app.route('/getActivityComment', methods=['post'])
def get_activity_comment():
    data = json.loads(request.get_data(as_text=True))
    post_id = data.get('post_id')
    data = db.get_activity_comment(post_id)
    print(data)
    return to_json(data)


@app.route('/login')
def login():
    if 'email' not in session:
        return render_template('login.html')
    return redirect(url_for('home'))


@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('home'))
    # return render_template('login.html')


@app.route('/register')
def register():
    if 'email' not in session:
        return render_template('register.html')
    return redirect(url_for('home'))


@app.route('/home')
def home():
    return render_template('home.html')


@app.route('/profile')
def profile():
    return render_template('profile.html')


@app.route('/post/<post_id>')
def post(post_id):
    context = db.get_post_detail(post_id)
    if context is None:
        return redirect(url_for('home'))
        # return render_template('post.html')
    print(context)
    return render_template('post.html', **context)


@app.route('/activity/<post_id>')
def activity_detail(post_id):
    context = db.get_activity_detail(post_id)
    if context is None:
        return redirect(url_for('home'))
        # return render_template('post.html')
    print(context)
    return render_template('activityDetail.html', **context)


@app.route('/createPost')
def create_post_page():
    return render_template('createPost.html')


@app.route('/activity')
def activity_page():
    return render_template('activity.html')


@app.route('/myActivity')
def my_activity_page():
    return render_template('myActivity.html')


@app.route('/createActivity')
def create_activity():
    return render_template('createActivity.html')


@app.route('/loginError')
def login_error():
    return render_template('error.html', error_msg='Incorrect email or password supplied.')


@app.route('/logoutDone')
def logout_success():
    return render_template('error.html', error_msg='You have been logged out.')


@app.route('/uploadImage', methods=['post'])
def upload_image():
    f = request.files['file']
    unique_key = create_unique_number()
    base_path = os.path.dirname(__file__)
    # print(f.filename)
    upload_path = os.path.join(base_path, 'static/c-images', secure_filename(unique_key + '.jpg'))
    f.save(upload_path)
    # im = Image.open(upload_path)
    # rgb_im = im.convert('RGB')
    # rgb_im.save(os.path.join(base_path, 'static/c-images', unique_key + '.jpg'))  # transform image to jpg.
    result = {
        "error": 0,
        "url": "/static/c-images/" + unique_key + ".jpg"
    }
    return to_json(result)


def create_unique_number():
    now_time = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    random_num = random.randint(0, 1000000)
    if random_num <= 10:
        random_num = str(0) + str(random_num)
    unique_num = str(now_time) + str(random_num)
    return unique_num


def to_json(obj):
    res = {
        "data": obj
    }
    return json.dumps(res)


if __name__ == '__main__':
    app.run(debug=True)
