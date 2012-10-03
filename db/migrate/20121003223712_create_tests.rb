class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :pre
      t.string :post
      t.string :name

      t.timestamps
    end
  end
end
