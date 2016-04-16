class Producto < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates_processing_of :image
validate :image_size_validation
 
private
  def image_size_validation
    errors[:image] << "debe ser inferior a 2 MB" if image.size > 2.0.megabytes
  end
end


