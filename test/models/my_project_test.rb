require 'test_helper'

class MyProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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
