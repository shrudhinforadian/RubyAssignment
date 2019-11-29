
module CreditRating
  def credit_rating
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

module LoadFile
  require 'yaml'
  def load_yaml(item)
    data = YAML.safe_load(File.read('data/input.yml'))
    list = data[item]
  end
end
module ExportFile
  require 'yaml'
  def export_yaml(item)
    data_in = YAML.safe_load(File.read('data/output.yml'))
    item = data_in.merge(item) if data_in
    data = File.open('data/output.yml', 'w') { |file| file.write(item.to_yaml) }
  end
end
