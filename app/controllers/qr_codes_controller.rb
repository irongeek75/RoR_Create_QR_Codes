class QrCodesController < ApplicationController
  def new
  end

  def create
    @qr = RQRCode::QRCode.new( qr_code_params[:text], size: 10).to_img.resize(200, 200).to_data_url
  end

  private
  def qr_code_params
    params.require(:qr_code).permit(:text)
  end
end
