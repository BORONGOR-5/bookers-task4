class Relationship < ApplicationRecord
    belongs_to :user
    # フォローするユーザー
    belongs_to :follower, class_name: "User"
    # フォローされるユーザー
    # belongs_to :followed, class_name: "User"
    
    
    validates :user_id, presence: true
    validates :follower_id, presence: true
    # validates :followed_id, presence: true
end
