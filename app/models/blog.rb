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

     validates_presence_of :title, :body, :user
     validates_length_of :body, minimum: 250
end