module BasicSearch
  class Railtie < Rails::Railtie
    initializer "basic_table_sorter.controller_additions" do
      ActionModel::Base.send :include, ControllerAdditions
    end
    initializer "basic_table_sorter.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end