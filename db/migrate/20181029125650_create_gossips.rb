class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
    	t.string :Author
    	t.string :Content

      t.timestamps
    end
  end
end
