class Missile < Structure

  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end
end
