from fastapi import FastAPI

app = FastAPI()

@app.get('/ping')
async def ping():
    return {"ping": "pong"}

@app.get('/health')
async def health():
    return {'status': 'ok'}

