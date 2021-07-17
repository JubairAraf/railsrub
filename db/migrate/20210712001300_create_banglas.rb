class CreateBanglas < ActiveRecord::Migration[6.1]
  def change
    create_table :banglas do |t|
      t.string :khawa
      t.integer :mangso

      t.timestamps
    end
  end
end
