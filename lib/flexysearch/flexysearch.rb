# frozen_string_literal: true

# The Flexysearch class provides a flexible search functionality to ActiveRecord.
class Flexysearch
  DEFAULT = {
    queries: [],
    page: 1,
    size: 10
  }.freeze

  def self.search(model, vars)
    new(model, vars).search
  end

  def initialize(model, vars)
    @model = model
    @vars = sanitize_params(vars)
  end

  def search
    @model.where(build_query).take(@vars[:size])
  end

  private

  def sanitize_params(params)
    params = params.to_h
    params = params.symbolize_keys
    params = DEFAULT.merge(params)
    params[:queries] = params[:queries].map(&:to_sym)
    params
  end

  def build_query
    # Start with Simple implementation
    @vars[:queries].reduce(nil) do |query, field|
      query.nil? ? @model.all : query.or(@model.where(field => @vars[field]))
    end
  end
end
