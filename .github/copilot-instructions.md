
# GitHub Copilot Instructions
docker環境を使用しているので、コマンド実行はwebコンテナ内で行ってください。
例: docker compose exec web bash

応答は日本語で行ってください。

アプリケーションの目的:
- Railsのform_withの使い方を学ぶためのサンプルアプリケーションです。
- PostモデルとNotificationSettingモデルがあり、PostはNotificationSettingを1つ持ちます。
- NotificationSettingはPostに紐づく通知設定を管理します。

```ruby:comfig/routes.rb
resources :posts do 
  resource :notification_setting, only: %i[new create edit update]
end
```