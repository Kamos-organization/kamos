# README

## プロジェクトのクローン

    git clone https://github.com/Kamos-organization/kamos.git
    
## 対象プロジェクトへ移動
    cd kamos
    
## 環境構築
    .envをルート直下に配置する

    DEVISE_SECRET_KEY = "cf78eb5239c4cc242eb5959d2266d459831d8bf46582354ada6c79a86894f686ffc9645ce509f8c65ef9f1c96ffa25f7ad5becdfbb2adbbafce3d3321bed3727"
    
## bundle install
    bundle install --path vendor/bundle
    
## データベースの作成
    bundle exec rails db:create
    
## テーブルの作成
    bundle exec rails db:migrate

## サーバーの起動
    bundle exec rails s
