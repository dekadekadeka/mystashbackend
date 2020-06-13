class ShoppingList < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :fabrics
  has_and_belongs_to_many :flosses
  has_and_belongs_to_many :needles
  has_and_belongs_to_many :notions
  has_and_belongs_to_many :patterns
  has_and_belongs_to_many :yarns
end

# == Schema Information
#
# Table name: shopping_lists
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_shopping_lists_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
