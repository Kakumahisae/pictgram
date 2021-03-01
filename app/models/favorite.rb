class Favorite < ApplicationRecord
  
  belongs_to :user
  belongs_to :topic
  
end

# いいねfavorite は一つのuserを持っている。
