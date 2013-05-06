module BasicSearch
  module ActiveRecordAdditions

    module ClassMethods
      def search(search_term = nil, *columns)
        if search_term
          where_conditions = columns.map { |column| column.to_s + ' LIKE :search_value' }.join(' OR ')
          where(where_conditions, {search_value: "%#{search_term}%"})
        else
          scoped
        end
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end
  end
end