class CreateLotteries < ActiveRecord::Migration
  def change
    create_table :lotteries do |t|
      t.string :title
      t.text :description
      t.date :due_at

      t.timestamps
    end
  end
end
