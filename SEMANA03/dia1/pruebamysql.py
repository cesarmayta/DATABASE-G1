import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="db_turismo"
)

cursor = conn.cursor()

cursor.execute("select * from tbl_agencia")

resultado = cursor.fetchall()

cursor.close()

print(resultado)