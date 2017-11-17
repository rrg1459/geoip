Rails.application.routes.draw do
  resource :geo_ip_request, controller: :geo_ip_request

  root to: "geo_ip_request#new"


end