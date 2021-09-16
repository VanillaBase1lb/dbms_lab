# from mysql.connector.connection import MySQLConnection
from .app import app, request, jsonify
from dbhandler.sqlhandler import Mysqlhandler

@app.route("/")
def root():
    return "hello"
    
@app.route("/user/register", methods = ["POST"])
def register():
    data = request.json
    Mysqlhandler.add_user(data["name"], data["phno"], data["dob"])
    return "user registered"

@app.route("/user/delete", methods = ["POST"])
def delete():
    data = request.json
    Mysqlhandler.delete_user(data["phno"])
    return "user deleted"
    
@app.route("/user/view", methods = ["GET"])
def view():
    table = Mysqlhandler.display_users()
    row_headers=[i[0] for i in table.description]
    data = table.fetchall()
    json_table=[]
    for i in data:
        json_table.append(dict(zip(row_headers,i)))
    return jsonify(json_table)
    
@app.route("/user/update", methods = ["POST"])
def update():
    data = request.json
    Mysqlhandler.update_user(data["name"], data["phno"], data["dob"])
    return "user updated"