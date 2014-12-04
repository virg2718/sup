class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :moniker

      t.timestamps
    end
  end
end
