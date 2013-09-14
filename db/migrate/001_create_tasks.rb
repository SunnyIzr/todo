require_relative '../../config/application.rb'

class CreateTasks < ActiveRecord::Migration

  def change
    create_table :tasks do |row|
      row.boolean :complete?
      row.string :name
      row.date :due_date
      row.datetime :created_at
      row.datetime :updated_at
    end

  end

end
