class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string　zipang_text :original_text
      t.text :zipang_to_num

      t.timestamps
    end
  end
end
