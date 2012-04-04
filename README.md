= JppCustomercodeTransfer

郵便番号と住所から日本郵便が指定するカスタマバーコードのコードを生成するgemです。
完成品では無いです。

カスタマバーコードについては以下を参照ください。
http://www.post.japanpost.jp/zipcode/zipmanual/p17.html

事前に日本郵便が提供する郵便番号データを取得しておく必要があります。
以下を参照してください。
http://www.post.japanpost.jp/zipcode/download.html

あとでデータベースにインポートする作業をおこないます。

= INSTALL

gem install jpp_customercode_transfer

or

gem "jpp_customercode_transfer"

= Prepare

rake jpp_customercode_transfer:install:migrations
rake db:migrate

rails r "JppCustomercodeTransfer::ZipCodeList.import('KEN_ALL.CSV')"

= How to use

= License

This project rocks and uses MIT-LICENSE.
