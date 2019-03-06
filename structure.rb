class Structure
  include Drawing

  DAMAGE = 1

  def initialize(args)
    @location = args.fetch[:location]
    @hit_points = args.fetch[:hit_points]
  end
end
