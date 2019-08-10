association_tutorial
====

## What is this?

エンジニアリングスクール[RaiseTech](https://raise-tech.net/)のAWSフルコース第4回講座で紹介された[Qiita記事](https://qiita.com/kazukimatsumoto/items/14bdff681ec5ddac26d1)（Twitterクローン）を参考に、デプロイ先をAmazon Web Service上で構築したものです。加えてAPサーバ、WEBサーバはunicorn＋nginxを使用しています。
- 本課題に関して提供を受けたものは前述の記事情報のみであり、記事に記載の無い手順は検索サイトで入手可能な情報を元に内容を精査し使用しています。


## 機能

- ユーザー登録、ログイン(devise)
- 投稿
- お気に入り/お気に入り解除
- ユーザーのフォロー/フォロー解除

## 動作環境

- Amzxon Linux 2 (ami-0c3fd0f5d33134a76)
- RDS (エンジンバージョン MySQL 5.7.22)
- rbenv 1.1.2-2-g4e92322
- ruby 2.6.3p62 (2019-04-16 revision 67580)
- Rails 5.2.3
- nginx version: nginx/1.12.2

## 導入・導入時注意事項

```
$ git clone https://github.com/miima17/association_tutorial.git
```
- 設定はec2-user上で行っています。権限不足の場合は都度sudoしてください。
- RDSはMySQL,文字コードUTF-8で構築してください。2バイト文字投稿ができなくなります。
- nginxはnode.jsより先に導入してください。nginxインストールでトラブルになることがあります。

- nginxの設定は/nginx_config内にあります。コピーして使えます。
- config/unicorn.rbと設定が関連していますので、ディレクトリパスに注意してください。
- database.ymlはgitにアップしていません。各自準備してください。

## 参考サイト

- [【初心者向け】丁寧すぎるRails『アソシエーション』チュートリアル【幾ら何でも】【完璧にわかる】](https://qiita.com/kazukimatsumoto/items/14bdff681ec5ddac26d1)

- [AmazonLinuxにNginxとRailsをインストールして80番ポートからrailsに繋げる](https://qiita.com/kyo_nanba/items/ebe1ca322c2bb1406be8)


## 作成者

[@miima_17](https://twitter.com/miima_17)
