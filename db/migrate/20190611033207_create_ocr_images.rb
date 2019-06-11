class CreateOcrImages < ActiveRecord::Migration[5.2]
  def change
    create_table :ocr_images do |t|
      t.string　ocr_result :name

      t.timestamps
    end
  end
end
