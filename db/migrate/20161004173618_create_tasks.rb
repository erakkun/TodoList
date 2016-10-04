class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.references :task_type, index: true, foreign_key: true
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
