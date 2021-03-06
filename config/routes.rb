Spree::Core::Engine.routes.draw do
  
  namespace :admin do
    resources :reports, :only => [] do
      collection do
        SpreeReports.reports.each do |report|
          get report
        end
      end
    end
  end
  
  namespace :api do
    resources :spree_reports, :only => [] do
      collection do
        SpreeReports.reports.each do |report|
          get report
        end
      end
    end
  end
  
end