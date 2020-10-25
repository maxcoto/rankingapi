class RankingController < ApplicationController
  def get
    render json: { success: true, ranking: Ranking.all.to_a }
  end

  def set
    if(params[:uuid])
      r = Ranking.find_or_create_by(uuid: params[:uuid])
      r.name = params[:name]
      r.points = params[:points].to_f
      r.save!
    end
    
    render json: { success: true }
  end
end
