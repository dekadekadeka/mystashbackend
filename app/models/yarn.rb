class Yarn < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :shopping_lists
end

# == Schema Information
#
# Table name: yarns
#
#  id         :bigint           not null, primary key
#  brand      :string
#  color      :string
#  lot        :string
#  name       :string
#  pic        :string
#  size       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
