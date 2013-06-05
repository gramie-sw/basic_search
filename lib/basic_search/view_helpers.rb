module BasicSearch
  module ViewHelpers

    def search_param_hash
      params[:search] ? { search: params[:search] } : {}
    end

    def sortable_with_search columns, title
      sortable(columns, title, search_param_hash)
    end
  end
end