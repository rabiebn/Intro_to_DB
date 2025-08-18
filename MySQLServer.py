import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
    )

    mycursor = mydb.cursor()

    mycursor.execute(
        "CREATE DATABASE IF NOT EXISTS alx_book_store"
    )

    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as err:
    print(f"Something went wrong: {err}")
finally:
    if mycursor is not None:
        mycursor.close()
    if mydb.is_connected():
        mydb.close()