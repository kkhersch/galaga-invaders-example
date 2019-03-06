class Ship < Structure
  include Hittable
  include Destroyable
  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end

end
