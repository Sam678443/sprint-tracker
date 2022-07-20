class CreateSprints < ActiveRecord::Migration[7.0]
  def change
    create_table :sprints do |t|
      t.string :name
      t.boolean :warmup
      t.integer :sittingbpm
      t.string :jogging
      t.integer :bpm
      t.integer :sprintingbpm

      t.timestamps
    end
  end
end
