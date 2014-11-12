require File.join(File.dirname(__FILE__), '..', 'test_helper.rb')
class ImageListingTest < Minitest::Test


  def setup
   @image_list   = ImageListing::ImageListing.new
  end

  def test_for_array
    array =  @image_list.get_the_sizes_of_images("http://iamfree.com" )
    assert_instance_of  Array , array
    assert array.count > 1
  end

   def test_get_the_sizes_of_images_limited
     array =  @image_list.get_the_sizes_of_images_limited("http://iamfree.com", 5)
     assert_instance_of  Array , array
     assert_equal array.count,  5
   end


end
