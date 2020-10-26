class RankingController < ApplicationController
  def get
    ranking = Ranking.all.order(points: :asc)
    render json: { success: true, ranking: ranking }
  end

  def set
    name = params[:name]
    if(name)
      points = params[:points].to_f
      if(points > 0)
        r = Ranking.find_or_create_by(name: name)
        if(r.points.nil? || points < r.points)
          r.points = points
          r.save!
        end
      end
    end

    render json: { success: true }
  end
end
