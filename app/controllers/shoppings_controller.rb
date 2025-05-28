class ShoppingsController < ApplicationController
  def index
    matching_shoppings = Shopping.all

    @list_of_shoppings = matching_shoppings.order({ :created_at => :desc })

    render({ :template => "shoppings/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_shoppings = Shopping.where({ :id => the_id })

    @the_shopping = matching_shoppings.at(0)

    render({ :template => "shoppings/show" })
  end

  def create
    the_shopping = Shopping.new
    the_shopping.name = params.fetch("query_name")
    the_shopping.body = params.fetch("query_body")

    if the_shopping.valid?
      the_shopping.save
      redirect_to("/shoppings", { :notice => "Shopping created successfully." })
    else
      redirect_to("/shoppings", { :alert => the_shopping.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_shopping = Shopping.where({ :id => the_id }).at(0)

    the_shopping.name = params.fetch("query_name")

    if the_shopping.valid?
      the_shopping.save
      redirect_to("/shoppings/#{the_shopping.id}", { :notice => "Shopping updated successfully."} )
    else
      redirect_to("/shoppings/#{the_shopping.id}", { :alert => the_shopping.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_shopping = Shopping.where({ :id => the_id }).at(0)

    the_shopping.destroy

    redirect_to("/shoppings", { :notice => "Shopping deleted successfully."} )
  end
end
