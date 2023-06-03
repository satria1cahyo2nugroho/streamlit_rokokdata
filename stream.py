import streamlit as st
import pandas as pd 
import numpy as np 
import matplotlib.pyplot as plt
from database import *


result = view_all_data()

data = pd.DataFrame(result,columns=["id",'time',"date","count"])
#data = pd.read_csv('dumy2.csv') 


option = st.sidebar.selectbox(
    'Silakan pilih:',
    ('Home','Dataframe','Chart')
)

if option == 'Home' or option == '':
    st.write("""# Halaman Utama""") #menampilkan halaman utama
    #print 10 baris pertama dari data
    st.write("""## Data 10 baris pertama""") #menampilkan judul halaman data 10 baris pertama
    st.write(data.head(10))
elif option == 'Dataframe':
    st.write("""## Dataframe""") #menampilkan judul halaman dataframe

    #membuat dataframe menggunakan data menu
    df = pd.DataFrame(
        data,
        columns=['time','date','count']
    )
    df #menampilkan dataframe
elif option == 'Chart':
    st.write("""# Draw Charts""") #menampilkan judul halaman 

    #membuat variabel chart data yang berisi data dari dataframe
    #data berupa angka acak yang di-generate menggunakan numpy
    #data terdiri dari 2 kolom dan 20 baris

    df = pd.DataFrame(
        data,
        columns=['time','date','count']
    )
    fig, ax = plt.subplots()
    df.plot.bar(x = 'date', y = ['count'], rot = 90, ax = ax)
    for p in ax.patches: 
        ax.annotate(np.round(p.get_height(),decimals=2), (p.get_x()+p.get_width()/2., p.get_height()))
    st.pyplot(fig) #menampilkan chart
    st.write("""## Dataframe""") #menampilkan judul halaman dataframe
    df