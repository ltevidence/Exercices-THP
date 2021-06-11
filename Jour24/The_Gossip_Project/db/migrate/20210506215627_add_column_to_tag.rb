class AddColumnToTag < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :title, :string
  end
end
