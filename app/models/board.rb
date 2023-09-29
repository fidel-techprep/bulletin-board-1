# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  has_many :posts
  has_many :expired_posts, -> { expired }, class_name: "Post"
  has_many :active_posts, -> { active }, class_name: "Post"

end
