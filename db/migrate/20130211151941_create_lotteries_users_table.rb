class CreateLotteriesUsersTable < ActiveRecord::Migration
  def change
    create_table :lotteries_users, id: false do |t|
      t.references :lottery
      t.references :user
    end
    add_index :lotteries_users, [:lottery_id, :user_id]
    add_index :lotteries_users, [:user_id, :lottery_id]
  end
end
