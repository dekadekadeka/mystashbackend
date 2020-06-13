class Fabric < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :shopping_lists
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
#
