require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  progress   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pattern_id :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_projects_on_pattern_id  (pattern_id)
#  index_projects_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (pattern_id => patterns.id)
#  fk_rails_...  (user_id => users.id)
#
