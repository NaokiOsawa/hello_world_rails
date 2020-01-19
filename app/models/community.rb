class Community < ApplicationRecord
  has_many :user_communities
  has_many :communities, through: :user_communities
end
