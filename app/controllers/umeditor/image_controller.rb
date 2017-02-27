require_relative '../../uploader/umeditor/image_uploader'
module Umeditor
  class ImageController < ActionController::Base
    def upload
      uploader = ImageUploader.new
      if uploader.store!(params[:upfile])
        result = {"originalName" => params[:upfile].original_filename,
                  "name" => params[:upfile].original_filename,
                  "url" => uploader.url,
                  "size" => 0,
                  "type" => params[:upfile].content_type,
                  "state" => "SUCCESS"}
      else 
        result = {"originalName" => params[:upfile].original_filename,
                  "name" => params[:upfile].original_filename,
                  "url" => '',
                  "size" => 0,
                  "type" => params[:upfile].content_type,
                  "state" => "error"}
      end
      render json: result
    end
  end
end
