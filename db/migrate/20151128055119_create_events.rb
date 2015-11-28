class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :title
      t.text :description
      t.string :category
      t.datetime :date_time
      t.string :address
      t.string :guest
      t.references :user, index: true, foreign_key: true
      t.boolean :availability, default: true
      t.integer :price

      t.timestamps null: false
    end
  end
end
