module Tramway
  module Landing
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
