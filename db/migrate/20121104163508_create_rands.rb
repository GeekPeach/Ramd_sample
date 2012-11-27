class CreateRands < ActiveRecord::Migration
  def change
    create_table :rands do |t|
      t.string :file
      t.string :file_desc

      t.timestamps
    end
  end
end
