WarhammerSkills::Application.routes.draw do
  devise_for :users

  resources :skills, only: :index

  resources :skill_basics, except: :show, controller: :basic_skills
  resources :advanced_skills, except: :show

end
