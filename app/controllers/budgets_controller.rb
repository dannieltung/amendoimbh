class BudgetsController < ApplicationController
  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      redirect_to product_path(@budget), notice: 'Orçamento criado!'
    else
      render :new
    end
  end

  private

  def budget_params
    params.require(:budget).permit(:user_id, :product_id, :quantity)
  end

end
