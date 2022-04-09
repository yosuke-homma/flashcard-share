class RenameTypeColumnToCards < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :type, :word_type
  end
end
