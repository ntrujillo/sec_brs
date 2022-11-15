class CreateBudgets < ActiveRecord::Migration[6.1]
  def change
    create_table :budgets do |t|
      t.string :budget_name
      t.decimal :budget_amount

      t.timestamps
    end
  end
end
