class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    drop_table :likes, if_exists: true

    create_table :likes do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end


=begin
class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes, if_not_exists: true do |t|
    #create_table :likes do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end
=end