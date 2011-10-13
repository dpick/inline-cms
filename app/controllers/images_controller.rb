class ImagesController < ApplicationController
  def upload_to_imgur
    path = File.join(Rails.root, "tmp/images/#{Time.now}.#{params[:file].original_filename.split(".").last}")

    Dir.mkdir("tmp/images") #make sure images directory exists

    File.open(path, "wb") { |f| f.write(params['file'].tempfile.read) }

    @uploaded_img = $imgur.upload_file path
    Image.create(:original => @uploaded_img['original_image'],
                 :small_thumbnail => @uploaded_img['small_thumbnail'],
                 :large_thumbnail => @uploaded_img['large_thumbnail'],
                 :delete_url => @uploaded_img['delete_page'])
  end
end
