新しいStripeを導入する手順

1)Gemをインストール
gem 'stripe'

2)ルーターとコントローラーを作る
rails g controller Pages payment success

3) 決済画面用のコントローラーを作成　(controllers>>pages_controller.rb>> payment)
※シークレットキーは自分のものに変更

4)決済画面のViewを作成 (views>>pages>>payment.html.erb)
※Publishable keyは自分のものに変更

5)決済成功画面のViewを作成 views>>pages>>success.html.erb


参考
https://qiita.com/lumbermill/items/a05f8e9bf2160b0b84f1

Herokuデプロイ後
https://stripe-new-payment.herokuapp.com/
