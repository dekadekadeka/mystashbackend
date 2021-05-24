class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  has_many :projects
  has_many :patterns, through: :projects

  has_many :yarns
  has_many :notions
  has_many :fabrics
  has_many :my_projects
  has_many :needles
  has_many :flosses

  def patterns_count
    patterns.count
  end

  def yarns_count
    yarns.count
  end

  def notions_count
    notions.count
  end

  def fabrics_count
    fabrics.count
  end

  def needles_count
    needles.count
  end

  def flosses_count
    flosses.count
  end
end

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
