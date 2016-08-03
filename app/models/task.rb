class Task < ActiveRecord::Base
  belongs_to :list, class_name: TaskList

  validates :description, presence: true, length: {maximum: 255}
  validates :list, presence: true

  
end
