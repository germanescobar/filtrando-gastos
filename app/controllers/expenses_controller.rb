class ExpensesController < ApplicationController
  def index
     @expenses = Expense.order("date DESC")
     if params[:concept]
      @expenses = @expenses.where("concept like '%#{params[:concept]}%'")
     end
  end
end
