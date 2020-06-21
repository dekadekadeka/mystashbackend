class Notion < ApplicationRecord
  belongs_to :user
end

# == Schema Information
#
# Table name: notions
#
#  id          :bigint           not null, primary key
#  brand       :string
#  color       :string
#  description :string
#  name        :string
#  size        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
