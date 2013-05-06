module BasicSearch
  module ViewHelpers

    def params_search_hash
      params[:search] ? { search: params[:search] } : {}
    end

    def search_param_hash columns, title
      sortable(columns, title, params_search_hash)
    end
  end
end