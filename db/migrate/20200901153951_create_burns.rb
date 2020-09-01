class CreateBurns < ActiveRecord::Migration[6.0]
  def change
    create_table :burns do |t|
      t.text :burn

      t.timestamps
    end
  end
end
