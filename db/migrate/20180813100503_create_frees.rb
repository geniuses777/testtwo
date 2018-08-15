class CreateFrees < ActiveRecord::Migration
  def change
    create_table :frees do |t|
      t.string :title
      t.string :content
      t.string :user
      t.timestamps null: false
    end
  end
end
