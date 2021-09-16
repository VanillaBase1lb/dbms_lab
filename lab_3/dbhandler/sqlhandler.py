import mysql.connector

cnx = mysql.connector.connect(user='bluetoothdev1ce', password='',
                              host='localhost',
                              database='UserDB')

cur = cnx.cursor()

class Mysqlhandler:
    
    def __init__(self):
        pass
    def add_user(name, phno, dob):
        query = f"insert into user_data(name, phno, dob) values('{name}', {phno}, '{dob}');"
        cur.execute(query)
        cnx.commit()                   
    def update_user(name, phno, dob):
        query = f"update user_data set name='{name}', dob='{dob}' where phno={phno};"
        cur.execute(query)
        cnx.commit()  
    def delete_user(phno):
        query = f"delete from user_data where phno='{phno}';"
        cur.execute(query)
        cnx.commit() 
    def display_users():
        query = f"select * from user_data;"
        cur.execute(query)
        return cur
    