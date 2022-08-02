class FixJoggingTypo < ActiveRecord::Migration[7.0]
  def change
    change_table :sprints do |t|
      t.remove :jogging
      t.rename :bpm, :joggingbpm
    end
    
  end
end
