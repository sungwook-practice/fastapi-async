# 개요
* Fastapi로 async 테스트

# chatgpt 텍스트
* 동기
```text
FastAPI application with a /hello endpoint that returns a JSON object with a "hello" key and "world" value, and sleeps for 5 second before returning the response:
```

* 비동기
```text
FastAPI application with a /hello async endpoint that returns a JSON object with a "hello" key and "world" value, and sleeps for 5 second before returning the response:
```

# 실행방법
* 파이썬 패키지 설치
```sh
cd ./app
pip install -r requirements.txt
```

* 로컬 실행
```sh
cd ./app

# sync
uvicorn --host 0.0.0.0 --port 8080 main:app --reload

# 잘못사용한 async_main
uvicorn --host 0.0.0.0 --port 8081 uncorret_async_main:app --reload

# 올바른 async
uvicorn --host 0.0.0.0 --port 8082 async_main:app --reload
```

* 쿠버네티스 실행


# 참고자료
* https://betterprogramming.pub/the-dangers-of-async-in-python-and-how-to-avoid-them-6e6f98f19f0e
* https://florimond.dev/en/posts/2019/08/introduction-to-asgi-async-python-web/
* https://www.daleseo.com/python-asyncio/
* https://dev.to/ruarfff/understanding-python-async-with-fastapi-42hn
* https://www.mdpi.com/2076-3417/12/7/3653