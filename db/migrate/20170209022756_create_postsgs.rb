class CreatePostsgs < ActiveRecord::Migration[5.0]
  def change
    create_table :postsgs do |t|
      t.string :title
	  t.string :image
	  t.string :content      
	  t.timestamps
    end
  end
end
