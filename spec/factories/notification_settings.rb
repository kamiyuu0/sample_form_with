FactoryBot.define do
  factory :notification_setting do
    notification_time { "2025-10-29 09:45:23" }
    notify_on_reaction { false }
    notify_on_comment { false }
    post { nil }
  end
end
