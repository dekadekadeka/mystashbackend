class Floss < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :shopping_lists
end

# == Schema Information
#
# Table name: flosses
#
#  id         :bigint           not null, primary key
#  amount     :string
#  brand      :string
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
