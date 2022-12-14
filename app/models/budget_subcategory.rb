# frozen_string_literal: true

class BudgetSubcategory < ApplicationRecord
     validates :name, :budgeted, :budget_category_id, presence: true
     belongs_to :budget_subcategory, optional: true
     has_many :request

     def spent
          request.where("status = 'completed'").sum('cost')
     end

     def pending
          request.where("status = 'pending'").sum('cost')
     end

     def balance
          budgeted - spent
     end
end
