class RankingController < ApplicationController
  def get
    ranking = Ranking.all.order(points: :asc)
    render json: { success: true, ranking: ranking }
  end

  def set
    uuid = params[:uuid]
    if(uuid)
      points = params[:points].to_f
      if(points > 0)
        r = Ranking.find_or_create_by(uuid: uuid)
        if(r.points.nil? || points < r.points)
          r.name = params[:name]
          r.points = points
          r.save!
        end
      end
    end
    
    render json: { success: true }
  end
end
