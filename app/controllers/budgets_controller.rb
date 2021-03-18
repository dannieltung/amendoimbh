class BudgetsController < ApplicationController
  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    @budget.user = current_user
    @budget.save
    redirect_to budget_path(@budget), notice: 'Orçamento criado!'
    # if @budget.save
    # else
    #   render :new
    # end
  end

  def show
    @budget = Budget.find(params[:id])
  end

  private

  def budget_params
    params.require(:budget).permit(:product_id, :quantity)
  end

end
