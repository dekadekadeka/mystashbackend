class AddPicToNotionAndFloss < ActiveRecord::Migration[6.0]
  def change
    add_column :notions, :pic, :string
    add_column :flosses, :pic, :string
  end
end
