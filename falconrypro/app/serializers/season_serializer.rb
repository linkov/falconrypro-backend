class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :start, :end, :start_date, :end_date, :bird, :between, :deleted

  def start_date
    object.start.strftime("%B %d %Y")
  end

  def bird
    object.bird.id.to_s
  end


  def end_date
    if object.end
      object.end.strftime("%B %d %Y")
    else
      "no end date"
    end

  end
end
