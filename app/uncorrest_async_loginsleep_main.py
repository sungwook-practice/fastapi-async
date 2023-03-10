from fastapi import FastAPI
import time

app = FastAPI()

@app.get("/healthcheck")
async def healthcheck():
    return {"health": "check"}

@app.get("/hello")
async def hello():
    time.sleep(120)
    return {"hello": "world"}
