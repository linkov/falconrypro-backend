class PinPhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{Rails.env}/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_limit => [600, 600]


  version :thumb do
    process :resize_to_fit => [300, 300]
  end


version :small_thumb, from_version: :thumb do
  process resize_to_fit: [120, 120]
end


def extension_white_list
  %w(jpg jpeg gif png)
end

end
