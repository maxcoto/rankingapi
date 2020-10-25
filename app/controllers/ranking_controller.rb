class RankingController < ApplicationController
  def get
    render json: { success: true, ranking: Ranking.all.to_a }
  end

  def set
    r = Ranking.find_or_create(uuid: params[:uuid])
    r.name = params[:name]
    r.points = params[:points].to_f
    r.save!
    
    render json: { success: true }
  end
end
