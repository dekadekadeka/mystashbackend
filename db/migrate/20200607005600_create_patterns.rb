class CreatePatterns < ActiveRecord::Migration[6.0]
  def change
    create_table :patterns do |t|
      t.integer :brand, default: 0
      t.string :number
      t.string :front_pic
      t.string :back_pic
      t.timestamps
    end
  end
end
