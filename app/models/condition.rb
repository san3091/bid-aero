class Condition < ActiveRecord::Base
  enum condition: [:NE, :OH, :SV, :CT, :AR, :SC]
end
