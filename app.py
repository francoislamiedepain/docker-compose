from flask import Flask, request, jsonify
from redis import Redis

app = Flask(__name__)
redis = Redis(host="redis", db=0, socket_timeout=5, charset="utf-8", decode_responses=True)

@app.route('/', methods=['POST', 'GET'])
def index():

    if request.method == 'POST':
        firstname = request.json['firstname']
        lastname = request.json['lastname']
        redis.rpush('datas', firstname)
        redis.rpush('datas', lastname)
        return jsonify({'firstname': firstname,'lastname': lastname})

    if request.method == 'GET':
        return jsonify(redis.lrange('datas', 0, -1))
