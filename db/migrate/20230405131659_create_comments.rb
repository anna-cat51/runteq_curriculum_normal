class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body, null: false, limit: 65535
      t.references :user, null: false, foreign_key: true
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
