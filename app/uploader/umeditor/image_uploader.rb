require 'carrierwave'
require 'carrierwave-imageoptimizer'
module Umeditor
  class ImageUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick
    include CarrierWave::ImageOptimizer
    storage :file
    process :resize_to_limit => [800,5000],optimize: [{ quality: 90 }]
    
    def initialize
      CarrierWave.root = Rails.root.join(Rails.public_path).to_s
      CarrierWave.base_path = ENV['RAILS_RELATIVE_URL_ROOT']
    end
    
    def store_dir
      'uploads'
    end

    def extension_white_list
      %w(jpg jpeg gif png)
    end
    def filename
      random_token = Time.now.strftime("%Y/%m/") + SecureRandom.hex(5)
      "#{random_token}.#{original_filename.split('.').last}" if original_filename
    end
  end
end