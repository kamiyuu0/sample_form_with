class Post < ApplicationRecord
  has_one :notification_setting, dependent: :destroy
end
