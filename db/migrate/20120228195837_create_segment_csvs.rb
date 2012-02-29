class CreateSegmentCsvs < ActiveRecord::Migration
  def change
    create_table :segment_csvs do |t|
      t.text :csv
      t.string :filename

      t.timestamps
    end
  end
end
