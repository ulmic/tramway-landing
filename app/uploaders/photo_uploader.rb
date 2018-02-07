module Tramway::Landing::PhotoVersions
  extend ActiveSupport::Concern

  included do
    version :card do
      process resize_to_fill: [400, 100]
    end
  end
end

#PhotoUploader.include Tramway::Landing::PhotoVersions
