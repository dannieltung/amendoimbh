class BudgetsController < ApplicationController
  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    # @budget.user_id = current_user
    # if @budget.save
    #   redirect_to budget_path(@budget), notice: 'Orçamento criado!'
    # else
    #   render :new
    # end
  end

  def show
  end

  private

  def budget_params
    params.require(:budget).permit(:user_id, :product_id, :quantity)
  end

end
