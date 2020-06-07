class Yarn < ApplicationRecord
  belongs_to :user
  belongs_to :shopping_list
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
