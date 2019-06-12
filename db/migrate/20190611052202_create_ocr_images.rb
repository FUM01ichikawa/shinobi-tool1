class CreateOcrImages < ActiveRecord::Migration[5.2]
  def change
    create_table :ocr_images do |t|
      t.string :name
      t.text :ocr_result

      t.timestamps
    end
  end
end
