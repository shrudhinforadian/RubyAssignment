
module CreditRating
  def credit_rating(credit_score)
    @credit_score = credit_score
    case @credit_score
    when 760..1000
      'Excellent'
    when 725..759
      'Great'
    when 660..724
      'Good'
    when 560..659
      'Mediocre'
    else
      'Bad'
    end
  end
end
