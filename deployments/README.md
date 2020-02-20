# Deployments

## infrastructure

terraformで構成しています。

- Route53
- ACM
- CloudFront
- S3

を使用しています。

## 初期デプロイのメモ

1. IAMの設定

2. [AWSCLIのインストール](https://qiita.com/yuyj109/items/3163a84480da4c8f402c)

3. AWSの設定

    awsの[独自ドメインを使用して静的ウェブサイトをセットアップする](https://docs.aws.amazon.com/ja_jp/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html)にしたがってセットアップする。

    1. Route53 でドメイン購入
    2. S3でバケット作成
        - ドメイン名はRoute53で購入したものと同じ
        - 後ろにs3.amazonaws.comがつく
        - 例, example.com.s3.amazonaws.com
        - パブリックアクセス設定を全許可
        - `aws s3 ls s3://tetsuzawa.com`で試せる
        - 無事終わったら `http://<BACKET_NAME>.s3-website.<REGION>.amazonaws.com/<FILENAME>` で確認できる
    3. ACMでSSL証明書を取得
        - DNSで検証
        - 検証保留中まで行ったらpulldownメニューを開いて、Route53でのレコードの作成を選択
    3. CloudFrontの設定
        - s3のドメインを設定（自動入力有り）
        - 終わったら `http://<DOMAIN_NAME>.cloudfront.net/<FILE_NAME>` でアクセスできるか確認
        - Alternate Domain Name (CNAMEs)に設定したい独自ドメインを入れる
    4. Route53でAレコードの設定
        - 名前は何も入れない
        - エイリアスにCloudFrontのディストリビューションを指定
        - `https://<YOUR_DOMAIN_NAME>/index.html`でアクセスできるか確認
    5. CloudFront 経由のときだけS3のファイルにアクセスできるようにする。
        - CloudFront
        - [Qiitaの記事](https://qiita.com/NaokiIshimura/items/46994e67b712831c3016#3-cloud-front-%E7%B5%8C%E7%94%B1%E3%81%AE%E6%99%82%E3%81%A0%E3%81%91-s3-%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AB%E3%82%A2%E3%82%AF%E3%82%BB%E3%82%B9%E3%81%A7%E3%81%8D%E3%82%8B%E3%82%88%E3%81%86%E3%81%AB%E3%81%99%E3%82%8B)を参考
        - `http://<BACKET_NAME>.s3-website.<REGION>.amazonaws.com/<FILENAME>` でアクセスできないことを確認する

    6. [公式ドキュメント](https://ja.nuxtjs.org/faq/deployment-aws-s3-cloudfront/)に従い、gulpを導入してデプロイ
        - 公式ドキュメン通りではうまくいかない部分がある。
        - [Qiitaの記事](https://qiita.com/GussieTech/items/3ae77dbcb1e79222a9bc) を参考に環境変数とheaderの部分を修正する必要がある


# gulp **[Deprecated]**

nuxtの公式ドキュメントにしたがってgulpを使用していましたが、CDをGithub Actionsで行うようにしたため、gulpはもう使いません。

gulpfile.jsの内容は以下の構成になっています。

- cloudfrontのキャッシュを削除
- s3とファイルを同期

