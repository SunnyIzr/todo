require_relative '../../config/application.rb'

class Task < ActiveRecord::Base
  def self.add(task)
    Task.create(name: task, complete?: false, created_at: DateTime.now, updated_at: DateTime.now)
  end

  def self.delete(task_id)
    Task.find(task_id).destroy
  end

  def self.complete(task_id)
    Task.find(task_id).update(complete?: true)
  end

  def self.list_all
    Task.all
  end
end
