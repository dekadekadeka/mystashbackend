class Pattern < ApplicationRecord
  validates :number, uniqueness: true

  has_many :projects
  has_many :users, through: :projects

  has_and_belongs_to_many :shopping_lists

  enum brand: {
    "Simplicity": 0,
    "McCalls": 1,
    "Butterick": 2,
    "Vogue": 3, 
    "New Look": 4,
    "Burda": 5,
    "Kwiksew": 6,
    other: 7,
  }
end

# == Schema Information
#
# Table name: patterns
#
#  id         :bigint           not null, primary key
#  back_pic   :string
#  brand      :integer          default("simplicity")
#  front_pic  :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
