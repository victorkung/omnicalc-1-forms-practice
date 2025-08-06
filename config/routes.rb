Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  # get("/your_first_screen", { :controller => "pages", :action => "first" })

  get("/", { :controller => "calculator", :action => "render_homepage" })

  # Square
  get("/square/new", { :controller => "calculator", :action => "square_new" })
  get("/square/results", { :controller => "calculator", :action => "square_results" })

  # Square Root
  get("/square_root/new", { :controller => "calculator", :action => "square_root_new" })
  get("/square_root/results", { :controller => "calculator", :action => "square_root_results" })

  # Payments
  get("/payment/new", { :controller => "calculator", :action => "payment_new" })
  get("/payment/results", { :controller => "calculator", :action => "payment_results" })

  # Random Number
  get("/random/new", { :controller => "calculator", :action => "random_new" })
  get("/random/results", { :controller => "calculator", :action => "random_results" })
end
