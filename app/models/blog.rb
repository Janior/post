# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :comments, dependent: :destroy 
  
  validates :title, presence: true
  validates :body, presence: true
  validates :body,  length: { minimum: 250 }
end