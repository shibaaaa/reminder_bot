# reminder_bot
## Dockerを使った起動方法
```
docker compose build
docker compose run --rm web bundle install 
docker compose up
```
Gemfileを更新した際は`docker compose run --rm web bundle install `してから`docker compose up`を実行してください。
