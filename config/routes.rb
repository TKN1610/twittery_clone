Rails.application.routes.draw do
  root "tweets#index"   # ホーム画面としてtweets#indexを設定する場合
  resources :tweets
end
