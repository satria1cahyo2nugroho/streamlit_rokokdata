import streamlit as st
import mysql.connector

conn=mysql.connector.connect(
    host="localhost",
    port="3306",
    user="root",
    password="",
    db="flask_try"
)

c=conn.cursor()


def view_all_data():
    c.execute('select * from rokok order by id asc')
    data=c.fetchall()
    return data