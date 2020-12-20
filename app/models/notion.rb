class Notion < ApplicationRecord
  belongs_to :user

  def notion_pic
    pic || generic_pic
  end

  def generic_pic
    'generic_notion.jpg'
  end
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
#  pic         :string
#  size        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
