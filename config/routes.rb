Rails.application.routes.draw do
  devise_for :users
  resources :contacts, only: [:new, :create]

  #navigation additional pages
  get 'pages/library'
  get 'pages/quick_tools'
  get 'pages/where_is_soleteam'
  get 'pages/sole_chef'
  get 'pages/sole_coach'
  get 'pages/tech_help'

 #contact forms
  get 'contacts/affiliate'
  get 'contacts/broker'
  get 'contacts/employee'
  get 'contacts/employer'
  get 'contacts/healthcare_practitioner'
  get 'contacts/individual'
  get 'contacts/new'
  get 'contacts/vendor'
 
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  #semesters year 1
  get 'semesters/semester_one'
  get 'semesters/semester_two'
  get 'semesters/semester_three'
  get 'semesters/semester_four'

  #semester 1
  get 'courses_semester_one/disease_prevention'
  get 'courses_semester_one/healthy_habits'
  get 'courses_semester_one/inspirational'
  get 'courses_semester_one/physical_activity'
  get 'courses_semester_one/understanding_my_body'
  get 'courses_semester_one/work_life_balance'

  #semester 1 classes
  get 'classes_semester_one/eat_breakfast'
  get 'classes_semester_one/green_vegetables'
  get 'classes_semester_one/intro_to_creating_healthy_habits'
  get 'classes_semester_one/water_part_one'
  get 'classes_semester_one/water_part_two'


  
  root to: 'visitors#new'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
