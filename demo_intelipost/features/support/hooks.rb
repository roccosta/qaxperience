# frozen_string_literal: true

Before do
  @page = lambda do |klass|
    klass.new
  end
end
