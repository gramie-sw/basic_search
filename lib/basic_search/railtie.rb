module BasicSearch
  class Railtie < Rails::Railtie
    initializer "basic_search.active_record_additions" do
      ActiveRecord::Base.send :include, ActiveRecordAdditions
    end
    initializer "basic_search.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end