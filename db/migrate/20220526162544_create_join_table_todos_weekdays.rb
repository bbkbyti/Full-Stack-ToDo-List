class CreateJoinTableTodosWeekdays < ActiveRecord::Migration[6.1]
  def change
    create_join_table :todos, :weekdays do |t|
      # t.index [:todo_id, :weekday_id]
      # t.index [:weekday_id, :todo_id]
    end
  end
end
