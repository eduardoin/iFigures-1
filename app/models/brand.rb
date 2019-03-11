class Brand
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def figures
    Figure.where(brand: name)
  end

  def figures_count
    figures.count
  end

  def random_picture
    figures.sample.main_photo
  end
end
