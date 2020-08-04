class MyProject < ApplicationRecord
  validates_numericality_of :progress, less_than_or_equal_to: 100

  belongs_to :user
end

# == Schema Information
#
# Table name: my_projects
#
#  id       :bigint           not null, primary key
#  name     :string
#  progress :integer          default(0), not null
#  user_id  :bigint
#
# Indexes
#
#  index_my_projects_on_user_id  (user_id)
#
