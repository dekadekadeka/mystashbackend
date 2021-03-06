class Yarn < ApplicationRecord
  belongs_to :user

  def yarn_pic
    pic || generic_pic
  end

  def generic_pic
    'generic_yarn.jpg'
  end
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
#  user_id    :integer
#
