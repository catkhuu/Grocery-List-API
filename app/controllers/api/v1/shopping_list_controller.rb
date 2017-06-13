class ShoppingListController < ApplicationController
  def index
    @shopping_lists = ShoppingList.all
    render json: @shopping_lists, status: :ok
  end

  def create
    @shopping_list = ShoppingList.create(shopping_list_params)
    if @shopping_list.save
      render json: @shopping_list, status: :created
    else
      render json: @shopping_list.errors, status: :unprocessable_entity
    end
  end

  def show
    @shopping_list = ShoppingList.where(user_id: params[:user_id], id: params[:id])
    ## user_id will most likely change to:
    ## current_user.shopping_lists.where(id: params[:id])
    render json: @shopping_list, status: :ok
  end

  def update
    @shopping_list = ShoppingList.where(user_id: params[:user_id], id: params[:id])
    if @shopping_list && @shopping_list.update(shopping_list_params)
      render json: @shopping_list, status: :ok
    else
      render json: @shopping_list.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @shopping_list = ShoppingList.where(user_id: params[:user_id], id: params[:id])
    if @shopping_list.destroy
      head(:ok)
    else
      render json: @shopping_list.errors, status: :unprocessable_entity
    end  
  end

  private

  def shopping_list_params
    params.require(:shopping_list).permit(:title, :shopping_date, :user_id)
  end
end
