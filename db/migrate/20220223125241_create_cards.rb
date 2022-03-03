class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.text :word
      t.string :type
      t.text :meaning
      t.text :example
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :cards, [:user_id, :created_at]
  end
end
