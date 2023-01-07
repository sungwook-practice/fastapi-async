from fastapi import FastAPI
import time

app = FastAPI()

@app.get("/hello")
async def hello():
    time.sleep(3)
    return {"hello": "world"}
