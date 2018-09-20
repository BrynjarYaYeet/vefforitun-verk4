from sys import argv

import bottle
from bottle import *
import urllib.request, json

"""
with open("gengi.json", "r") as skra:
    gogn = json.load(skra)
    print(gogn)
"""
@route("/")
def index():
    return """
    <h2> Verkefni 3. </h2>
    <p><a href="/a"> Json Local </a></p>
    <p><a href="/b"> Json ad API.is </a></p>
    """

#a liður - json local

@route("/a")
def index():
    return template("index.tpl")

#b liður - json api

with urllib.request.urlopen('http://apis.is/currency/') as url:
    data = json.loads(url.read().decode())

@route("/b")
def index():
    return template("index2.tpl", data=data)





@error(404)
def villa(error):
    return
    """
    <h2 style='color:red'>Þessi síða finnst ekki </h2>
    """

@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

#run(host="localhost", port=8070, reloader=True, debug=True)

run(host='0.0.0.0', port=argv[1])
