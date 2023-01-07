import asyncio
from fastapi import FastAPI

app = FastAPI()

async def hello():
    await asyncio.sleep(3)
    return {"hello": "world"}

@app.get("/hello")
async def hello_endpoint():
    return await hello()
