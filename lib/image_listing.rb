require_relative "image_listing/version"

require 'nokogiri'
require 'mechanize'
require 'fastimage'
module ImageListing

  class ImageListing
    #URL = "http://iamfree.com"

     def initialize
       @mech =  Mechanize.new

     end

     def  show_list_of_images(url)
       Mechanize.new.get(url) {|page| puts page.image_urls.join "\n"}
     end

     def list_of_images(url)
        page =  @mech.get(url)

        a = []
        page.image_urls.each do |o|
          a << o.to_s
        end
        a
       # a = {}
       # (page.image_urls.first.methods - Object.methods).each do |m|
       #   begin
       #      a[m.to_s] = page.image_urls.first.send(m.to_s).to_s
       #    rescue
       #    end
       # end
       # a
     end



     def  get_the_sizes_of_images(url)
       lit =  list_of_images(url)
       a = []
       lit.each do |img|
         a <<  ( FastImage.size(img) << img )
       end
       list = a.sort {|x,y| y[0] <=> x[0]}
       list_sorted = a.sort {|x,y| y[1] <=> x[1]}

     end

     def get_the_sizes_of_images_limited(url, n)
       lit =  list_of_images(url)
       a = []
       lit.each do |img|
         the_size =  FastImage.size(img)
         #get the images screen realestate in pixels
         width_by_height = the_size[0]  * the_size[1]
         addimage = (the_size << img)
         a <<  (addimage << width_by_height)
       end
       list =a.sort {|x,y| y[3] <=> x[3]}
       list.first(n)
     end
  end



   p ImageListing.new.get_the_sizes_of_images("http://iamfree.com")

end
