class Needle < ApplicationRecord
  belongs_to :user
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
