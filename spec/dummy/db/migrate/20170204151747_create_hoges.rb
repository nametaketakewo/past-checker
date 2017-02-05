class CreateHoges < ActiveRecord::Migration[5.0]
  def change
    create_table :hoges do |t|
      t.string :title
      t.datetime :ll_be_started
      t.date :will_be_ended

      t.timestamps
    end
  end
end
