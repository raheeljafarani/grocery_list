Rails.application.routes.draw do
  # Routes for the Shopping resource:

  # CREATE
  post("/insert_shopping", { :controller => "shoppings", :action => "create" })
          
  # READ
  get("/shoppings", { :controller => "shoppings", :action => "index" })
  
  get("/shoppings/:path_id", { :controller => "shoppings", :action => "show" })
  
  # UPDATE
  
  post("/modify_shopping/:path_id", { :controller => "shoppings", :action => "update" })
  
  # DELETE
  get("/delete_shopping/:path_id", { :controller => "shoppings", :action => "destroy" })

  #------------------------------

  # Routes for the Item resource:

  # CREATE
  post("/insert_item", { :controller => "items", :action => "create" })
          
  # READ
  get("/items", { :controller => "items", :action => "index" })
  
  get("/items/:path_id", { :controller => "items", :action => "show" })
  
  # UPDATE
  
  post("/modify_item/:path_id", { :controller => "items", :action => "update" })
  
  # DELETE
  get("/delete_item/:path_id", { :controller => "items", :action => "destroy" })

  #------------------------------

  # Routes for the List resource:

  # CREATE
  post("/insert_list", { :controller => "lists", :action => "create" })
          
  # READ
  get("/lists", { :controller => "lists", :action => "index" })
  
  get("/lists/:path_id", { :controller => "lists", :action => "show" })
  
  # UPDATE
  
  post("/modify_list/:path_id", { :controller => "lists", :action => "update" })
  
  # DELETE
  get("/delete_list/:path_id", { :controller => "lists", :action => "destroy" })

  #------------------------------

  

  devise_for :users


root to: "lists#index"

end
