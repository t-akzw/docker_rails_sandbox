# docker_rails_sandbox

# 初期構築手順

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

```
