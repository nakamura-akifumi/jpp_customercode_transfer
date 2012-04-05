jpp_customercode_transfer
======================

* 郵便番号と住所から日本郵便が指定するカスタマバーコードのコードを生成するgemです。
* 完成品では無いです。

カスタマバーコードについては以下を参照ください。
* <http://www.post.japanpost.jp/zipcode/zipmanual/p17.html>

事前に日本郵便が提供する郵便番号データを取得しておく必要があります。
以下を参照してください。
* <http://www.post.japanpost.jp/zipcode/download.html>

事前にデータベースにインポートする作業をおこないます。

## インストール

`
gem install jpp_customercode_transfer
`

or

`
gem "jpp_customercode_transfer"
`

## 郵便番号ファイルをインポート 

```ruby
    rake jpp_customercode_transfer:install:migrations
    rake db:migrate
    rails r "JppCustomercodeTransfer::ZipCodeList.import('KEN_ALL.CSV')"
```

## 利用方法

```ruby
    zipcode = "263-0023"
    address = "千葉市稲毛区緑町3丁目30-8　郵便ビル403号"
    ans = JppCustomercodeTransfer::ZipCodeList.generate_japanpost_customer_code(zipcode, address)
    puts ans # => '26300233-30-8-403'
```
## License

This project rocks and uses MIT-LICENSE.
