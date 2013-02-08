class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :nick_name
      t.text :description
      t.date :birthday

      t.timestamps
    end
  end
end
