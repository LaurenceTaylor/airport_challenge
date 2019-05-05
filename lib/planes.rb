class Plane
  attr_reader :status

  def initialize
    @status = :flying
  end

  def land
    @status = :landed
  end

  def fly
    @status = :flying
  end
end
