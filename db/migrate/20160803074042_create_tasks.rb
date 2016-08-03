class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description, null: false
      t.string :priority
      t.date :due_date
      t.boolean :completed, null: false, default: false
      t.belongs_to :list, null: false

      t.timestamps null: false
    end
  end
end
