class CreateTasklists < ActiveRecord::Migration
  def change
    create_table :tasklists do |t|
      t.belongs_to :owner

      t.timestamps null: false
    end

    
  end
end
