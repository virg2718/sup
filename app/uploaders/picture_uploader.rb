# The below is adapted from railstutorial.org

class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process resize_to_limit: [400, 400]
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick

  # Choose what kind of storage to use for this uploader:
  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
     ActionController::Base.helpers.asset_path("images/" + [version_name, "default.jpg"].compact.join('_'))
  
     "/images/fallback/" + [version_name, "defaultphoto.jpg"].compact.join('_')
  end


  # Add a white list of extensions which are allowed to be uploaded.

  def extension_white_list
    %w(jpg jpeg gif png)
   end

  mount_uploader :picture, PictureUploader
end
