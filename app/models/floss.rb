class Floss < ApplicationRecord
  belongs_to :user

  def floss_pic
    pic || generic_pic
  end

  def generic_pic
    'generic_floss.jpg'
  end
end

# == Schema Information
#
# Table name: flosses
#
#  id         :bigint           not null, primary key
#  amount     :string
#  brand      :string
#  color      :string
#  pic        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
