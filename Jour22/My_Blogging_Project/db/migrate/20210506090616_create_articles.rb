class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subject
      t.text :content
      t.belongs_to :user, index: true #Fait le pont entre les deux tables

      t.timestamps
    end
  end
end
