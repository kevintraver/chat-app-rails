class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :chatroom, foreign_key: true

      t.timestamps
    end
  end
end