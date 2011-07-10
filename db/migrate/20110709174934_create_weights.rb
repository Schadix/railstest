class CreateWeights < ActiveRecord::Migration
  def self.up
    create_table :weights do |t|
      t.float :weight
      t.date :date
      t.references :person

      t.timestamps
    end
  end

  def self.down
    drop_table :weights
  end
end
