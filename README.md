# docker_rails_sandbox

# Rails newでapp以下にファイルを作成するまで

euclid3620/rails_baseは./Dockerfileをdockerhubに登録したもの

まず、ホスト側で`docker-compose up -d --build`する。
次に、`docker exec -i -t docker_rails_sandbox_web_1 bash`してコンテナに入る。

volumeでホストの./appをコンテナ内の/appにマウントしているので、  
そこでbundle initしてrailsを導入する。

```bash
# Gemfileのrailsバージョンを6.0.0に指定
bundle install --path vendor/bundle
bundle exec rails new .
bundle update #こけたのでupdateした
bin/rails db:create
bin/rails s
bundle exec rails webpacker:install #こけたので入れた
bundle exec rails s
# http://0.0.0.0:3000/
```

# 導入手順

.envファイルは外部サーバから取ってきたい・・

```bash
echo "" >> .env
echo "DATABASE_PASSWORD=password" >> .env_postgres
./start.sh
```

- Rails:   http://localhost:3000
- pgAdmin: http://localhost:8080

pgAdminでDBにつなぐときは、db1、db2をホストで指定して、5432をポートで指定する。

# DBアクセス

```bash
bundle exec rails db;
```

# Releases

- 0.0.1  
  0.0.0.0:3000でRailsが立ち上がる。  
  DBはsqliteのまま。  
- 0.0.2  
  rubocop導入。  
