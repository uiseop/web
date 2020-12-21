class Post < ApplicationRecord
    mount_uploader :image
  belongs_to :user
has_many :comments, dependent: :destroy
end
