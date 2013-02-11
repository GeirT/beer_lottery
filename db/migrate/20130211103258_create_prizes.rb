class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :name
      t.text :description
      t.references :lottery

      t.timestamps
    end
    add_index :prizes, :lottery_id
  end
end
