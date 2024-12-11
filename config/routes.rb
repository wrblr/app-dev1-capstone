Rails.application.routes.draw do

  # Routes for the Message resource:

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })
          
  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  
  get("/messages/:path_id", { :controller => "messages", :action => "show" })
  
  # UPDATE
  
  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })
  
  # DELETE
  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  # Routes for the Query resource:
  get("/", { :controller => "queries", :action => "index"})

  # CREATE
  post("/insert_query", { :controller => "queries", :action => "create" })
          
  # READ
  get("/queries", { :controller => "queries", :action => "index" })
  
  get("/queries/:path_id", { :controller => "queries", :action => "show" })
  
  # UPDATE
  
  post("/modify_query/:path_id", { :controller => "queries", :action => "update" })
  
  # DELETE
  get("/delete_query/:path_id", { :controller => "queries", :action => "destroy" })

  #------------------------------

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
