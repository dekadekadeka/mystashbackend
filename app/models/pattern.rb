class Pattern < ApplicationRecord
  validates :number, uniqueness: true
  before_create :pattern_front_pic, :pattern_back_pic

  has_many :projects
  has_many :users, through: :projects

  enum brand: {
    "Simplicity": 0,
    "McCalls": 1,
    "Butterick": 2,
    "Vogue": 3,
    "New Look": 4,
    "Burda": 5,
    "Kwiksew": 6,
    "Other": 7
  }

  scope :search, ->(q) { where('brand::text ILIKE ? OR number::text ILIKE ?', Pattern.brands[q].to_s, "%#{q}%") }

  def pattern_front_pic
    front_pic || generic_front
  end

  def pattern_back_pic
    back_pic || generic_back
  end

  def generic_front
    'generic_front.jpg'
  end

  def generic_back
    'generic_back.jpg'
  end
end

# == Schema Information
#
# Table name: patterns
#
#  id         :bigint           not null, primary key
#  back_pic   :string
#  brand      :integer          default("Simplicity")
#  front_pic  :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
