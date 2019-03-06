class Fort < Structure
  include Destroyable
  include Damageable
  include Hittable
  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
    @hit_points = 10
  end
end
