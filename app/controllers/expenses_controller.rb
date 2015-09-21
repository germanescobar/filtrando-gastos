class ExpensesController < ApplicationController
  def index
    @expenses = Expense.order("date DESC")
    if params[:concept]
      @expenses = @expenses.where("concept like '%#{params[:concept]}%'")
    end
    if params[:category]
      @expenses = @expenses.where(category: params[:category])
    end
  end
end
