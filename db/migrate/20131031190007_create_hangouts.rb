class CreateHangouts < ActiveRecord::Migration
  def change
    create_table :hangouts do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
