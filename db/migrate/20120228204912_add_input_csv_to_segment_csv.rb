class AddInputCsvToSegmentCsv < ActiveRecord::Migration
  def change
    add_column :segment_csvs, :input_csv, :text

  end
end
