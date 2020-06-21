class AddUserToModels < ActiveRecord::Migration[6.0]
  def change
    add_column :fabrics, :user_id, :integer
    add_column :flosses, :user_id, :integer
    add_column :needles, :user_id, :integer
    add_column :notions, :user_id, :integer
    add_column :yarns, :user_id, :integer
  end
end
