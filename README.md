# docker_rails_sandbox

# 構築手順

まず、ホスト側で`docker-compose up -d --build`する。
次に、`docker exec -i -t docker_rails_sandbox_web_1 bash`してコンテナに入る。

volumeでホストの./appをコンテナ内の/appにマウントしているので、  
そこでbundle initしてrailsを導入する。
