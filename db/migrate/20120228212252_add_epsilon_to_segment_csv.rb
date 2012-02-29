class AddEpsilonToSegmentCsv < ActiveRecord::Migration
  def change
    add_column :segment_csvs, :epsilon, :float

  end
end
