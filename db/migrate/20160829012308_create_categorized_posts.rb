class CreateCategorizedPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :categorized_posts do |t|

      t.timestamps
    end
  end
end
