module Concerns::Findable
  def find_by_name(name)
    self.all.find do |element|
      element.name == name
    end
  end

  def find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      self.create(name)
    end
  end
end
