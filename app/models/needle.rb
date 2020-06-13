class Needle < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :shopping_lists
end

# == Schema Information
#
# Table name: needles
#
#  id          :bigint           not null, primary key
#  needle_type :string
#  size        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
