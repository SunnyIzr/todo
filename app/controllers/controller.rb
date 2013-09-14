require_relative '../models/task.rb'
require_relative '../views/view.rb'


class List < View
  attr_reader :view

  def initialize(view, task)
    @view = view.new
    @task = task.new
  end

  def get_input
    input = gets.chomp
  end

  def method_missing(meth, *args)
    @view.class.send(meth) if @view.class.respond_to?(meth)
    # @task.send(meth) if @task.respond_to?(meth)
  end
end


new_list = List.new(View, Task)

new_list.welcome_prompt
new_list.prompt_command
new_list.list_heading

