class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.date :date
      t.time :startTime
      t.time :endTime
      t.references :group, index: true

      t.timestamps
    end
  end
end
