class Notion < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :shopping_lists
end

# == Schema Information
#
# Table name: notions
#
#  id          :bigint           not null, primary key
#  brand       :string
#  color       :string
#  description :string
#  name        :string
#  size        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
