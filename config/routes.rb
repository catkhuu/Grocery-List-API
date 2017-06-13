Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      resources :users, only: [:create, :show, :update] do
        resources :shopping_lists, except: [:new, :edit]
        resources :test_recipes, except: [:new, :edit] do
          resources :ingredient_amount, except: [:new, :edit]
        end
        resources :shopping_lists_test_recipes, except: [:new, :edit]
      end
      resources :ingredients, except: [:new, :edit] do
        resources :specialty_purchase_destination, except: [:new, :edit]
      end   
    end
  end
end
