class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
    #unless table_exists?(:users)
      create_table :users do |t|
        t.string :uid
        t.string :pass
        t.integer :age

        t.timestamps
      end
    end
  end
end
=begin


class RecreateUsers < ActiveRecord::Migration[7.1]
  def change
    drop_table :users, if_exists: true

    create_table :users do |t|
      t.string :uid
      t.string :pass
      t.integer :age

      t.timestamps
    end
  end
end

=end