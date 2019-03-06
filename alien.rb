class Alien < Structure
  include Hittable
  include Destroyable
  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end
end
