class Fabric < ApplicationRecord
  belongs_to :user
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
