Rails.application.routes.draw do

  # Routes for the Query resource:

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
