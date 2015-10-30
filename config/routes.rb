Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to create photos
  get("/photos/new", { :controller => "photos", :action => "new_form"})
  get("/create_photo", { :controller => "photos", :action => "create_row"})

  # Routes to READ photos
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Routes to edit photos
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })

  # Routes to delete photos
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  # Routes to edit photos
  get("/update_photo/:id", { :controller => "photos", :action => "update_row" })


end
