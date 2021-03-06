class Product < ActiveRecord::Base
validates :title, :description, :image_url, presence: true
validates :title, length: {:minimum => 5}
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
validates :image_url, allow_blank: true, format: 
{
	with: %r{(\W|^)[\w.+\-]{0,25}[\.](jp[e]{0,1}g|gif|png)(\W|$)}i, 	message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'}
end
