Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "giraffe" })
end
