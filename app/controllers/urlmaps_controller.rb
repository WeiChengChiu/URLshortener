class UrlmapsController < ApplicationController

  def index
    @urlmap = Urlmap.new
    @urlmaps = Urlmap.all
  end

  def create

    @urlmap = Urlmap.new(urlmap_params)

    begin
      flag = false
      rand_url = SecureRandom.hex(4)
      Urlmap.all.each do |urlmap|
        if ran_url == urlmap.short_url
          flag = true
          continue
        end
      end
    end while flag == true

    @urlmap.short_url = rand_url

    redirect_to urlmaps_path
  end

  def destroy
    @urlmap = Urlmap.find(params[:id])

    @urlmap.destroy

    redirect_to urlmaps_path
  end

  private

  def urlmap_params
    params.require(:urlmap).permit(:long_url, :short_url)
  end

end
