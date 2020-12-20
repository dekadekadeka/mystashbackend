class Fabric < ApplicationRecord
  belongs_to :user

  def fabric_pic
    pic || generic_pic
  end

  def generic_pic
    'generic_fabric.jpg'
  end
end

# == Schema Information
#
# Table name: fabrics
#
#  id          :bigint           not null, primary key
#  color       :string
#  description :string
#  fabric_type :string
#  name        :string
#  pic         :string
#  size        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
