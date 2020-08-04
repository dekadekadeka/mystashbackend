class CreateMyProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :my_projects do |t|
      t.string :name
      t.integer :progress, null: false, default: 0
      t.belongs_to :user
    end
  end
end
