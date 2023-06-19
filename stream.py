import streamlit as st
import pandas as pd 
import numpy as np 
import matplotlib.pyplot as plt
from database import *
from matplotlib.dates import DateFormatter
import matplotlib.dates as mdates


result = view_all_data()

data = pd.DataFrame(result,columns=["id",'time',"date","count"])


option = st.sidebar.selectbox(
    'Silakan pilih:',
    ('Home','Daily','Monthly','general chart')
)

if option == 'Home' or option == '':
    st.write("""# Halaman Utama""")
    st.write("""## Data 10 baris pertama""")
    st.write(data.head(20))

elif option == 'Daily':
    st.write("""## Daily""")
    df = pd.DataFrame(
        data,
        columns=['time','date','count']
    )
    fib, ax = plt.subplots(figsize=(12, 8))
    ax.plot(df.index.values,
            df['count'].values,
            color='purple')
    ax.set(xlabel="date", ylabel="count",
           title="daily")
    ax.xaxis.set_major_locator(mdates.DayLocator(interval=1))
    ax.xaxis.set_major_formatter(DateFormatter("%m-%d"))
    st.pyplot(fib)

elif option == 'Monthly':
    st.write("""## Monthly""")
    dp = pd.DataFrame(
        data,columns=['time','date','count'],
    )
    fip,ax1 = plt.subplots()
    dp.plot.bar(x = 'date', y = ['count'], rot = 90, ax = ax1)
    ax1.set(xlabel="Month", ylabel="count",
           title="monthly")
    monthyearFmt = mdates.DateFormatter('%B %Y')
    ax1.xaxis.set_major_locator(mdates.MonthLocator(interval=1))
    ax1.xaxis.set_major_formatter(monthyearFmt)
    _ = plt.xticks(rotation=90)
    st.pyplot(fip)


elif option == 'general chart':
    st.write("""# General Charts""")
    df = pd.DataFrame(
        data,
        columns=['time','date','count']
    )
    fig, ax = plt.subplots()
    df.plot.bar(x = 'date', y = ['count'], rot = 90, ax = ax)
    for p in ax.patches: 
        ax.annotate(np.round(p.get_height(),decimals=2), (p.get_x()+p.get_width()/2., p.get_height()))
    st.pyplot(fig)