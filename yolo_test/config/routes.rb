Rails.application.routes.draw do
  get 'static_pages/home', to: 'static_page#home'
  get 'static_page/ajouter', to: 'static_page#ajouter'
  post 'static_page/ajouter', to: 'static_page#ajouter'
  get 'static_pages/contact', to: 'static_page#contact'
  get 'static_page/modif/(:id)', to: 'static_page#modif'
  post 'static_page/modif/(:id)', to: 'static_page#modif'
  get 'static_page/supprimer/(:id)', to: 'static_page#supprimer'
  get 'static_pages/team', to: 'static_page#team'
  get 'static_pages/welcoming/(:name)', to: 'static_page#welcoming'
  get 'layouts/team', to: 'layouts#team'
  root 'static_page#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
