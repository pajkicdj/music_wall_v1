class AddComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references(:user)
      t.references(:music)
      t.string :text, limit: 3000
      t.timestamps null: false
    end
  end
end
