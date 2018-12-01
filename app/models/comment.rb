# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  blog_id    :integer
#

class Comment < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  #validates :title, presence: true
  #validates :body, presence: true
end
