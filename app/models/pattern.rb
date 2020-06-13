class Pattern < ApplicationRecord
  validates :number, uniqueness: true

  has_many :projects
  has_many :users, through: :projects

  has_and_belongs_to_many :shopping_lists

  enum brand: {
    simplicity: 0,
    mccalls: 1,
    butterick: 2,
    vogue: 3, 
    new_look: 4,
    burda: 5,
    kwiksew: 6,
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
