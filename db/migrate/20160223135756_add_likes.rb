class AddLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references(:user)
      t.references(:music)
      t.timestamps null: false
    end
  end
end
