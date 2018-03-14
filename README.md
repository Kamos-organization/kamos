# README

## プロジェクトのクローン

    git clone https://github.com/Kamos-organization/kamos.git
    
## 対象プロジェクトへ移動
    cd kamos
    
## bundle install
    bundle install --path vendor/bundle
    
## データベースの作成
    bundle exec rails db:create
    
## テーブルの作成
    bundle exec rails db:migrate

## サーバーの起動
    bundle exec rails s
