class CreatePostches < ActiveRecord::Migration[5.0]
  def change
    create_table :postches do |t|
	  t.string :title
	  t.string :image
	  t.string :content
      t.timestamps
    end
  end
end
