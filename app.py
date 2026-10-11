import streamlit as st
import pandas as pd

st.title("Global Development Dashboard")
df = pd.read_csv('clean_country_data.csv')

# Filter
seg = st.selectbox("Select Segment", df['segment'].unique())
filtered = df[df['segment'] == seg]

st.write(f"Showing SQL: SELECT * FROM country_stats WHERE segment='{seg}'")
st.dataframe(filtered)

st.metric("Avg Income", f"{filtered['income'].mean():.0f}")
st.metric("High Risk Count", len(df[df['segment']=='High Risk Country']))