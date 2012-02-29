class AddSessionIdToSegmentCsv < ActiveRecord::Migration
  def change
    add_column :segment_csvs, :session_id, :string

  end
end
