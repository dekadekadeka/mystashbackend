class CreateThroughTables < ActiveRecord::Migration[6.0]
  def change
    create_table :patterns_shopping_lists, id: false do |t|
      t.belongs_to :pattern
      t.belongs_to :shopping_list
    end

    create_table :fabrics_shopping_lists, id: false do |t|
      t.belongs_to :fabric
      t.belongs_to :shopping_list
    end

    create_table :flosses_shopping_lists, id: false do |t|
      t.belongs_to :floss
      t.belongs_to :shopping_list
    end

    create_table :needles_shopping_lists, id: false do |t|
      t.belongs_to :needle
      t.belongs_to :shopping_list
    end

    create_table :notions_shopping_lists, id: false do |t|
      t.belongs_to :notion
      t.belongs_to :shopping_list
    end

    create_table :yarns_shopping_lists, id: false do |t|
      t.belongs_to :yarn
      t.belongs_to :shopping_list
    end
  end
end
