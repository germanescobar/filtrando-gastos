class ExpensesController < ApplicationController
  def index
    @expenses = Expense.order("date DESC")
    if params[:concept]
      @expenses = @expenses.where("concept like '%#{params[:concept]}%'")
    end
    if params[:category_id]
      @expenses = @expenses.where(category: params[:category_id])
    end
  end
end
