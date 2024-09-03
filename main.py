from fastapi import FastAPI as fp
from datetime import datetime

app = fp()

@app.get("/current-date")
def CurrDate():
    current_datetime = datetime.now()
    return {"DateTime": current_datetime}