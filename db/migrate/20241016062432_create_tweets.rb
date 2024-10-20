class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    drop_table :tweets, if_exists: true

    create_table :tweets do |t|
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end

=begin
class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    #create_table :tweets do |t|
    create_table :tweets, if_not_exists: true do |t|
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end

=end
