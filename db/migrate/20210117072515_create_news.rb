class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.integer :category_id, null: false, foreign_key:true
      t.references :user,  null: false, foreign_key:true
      t.timestamps
    end
  end
end
