class SearchHandler
  attr_reader :input,
              :scope

  def initialize(scope, input = nil)
    @scope = scope
    @input = input
  end

  def count
    @count ||= begin
      if scope.is_a?(Array)
        scope.length
      else
        with_search_scope(scope).count
      end
    end
  end

  def records
    @records ||= all_records
  end

  private

  def all_records
    with_search_scope(scope)
  end

  def with_search_scope(scope)
    return scope if input.nil?

    search_term = input.search_term
    scope = scope.search(search_term) if scope.respond_to?(:search) && search_term.present?
    scope
  end
end
