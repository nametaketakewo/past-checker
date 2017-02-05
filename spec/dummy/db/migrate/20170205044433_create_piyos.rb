class CreatePiyos < ActiveRecord::Migration[5.0]
  def change
    create_table :piyos do |t|
      t.string :title
      t.date :ll_be_started_at
      t.datetime :will_be_ended_at

      t.timestamps
    end
  end
end
