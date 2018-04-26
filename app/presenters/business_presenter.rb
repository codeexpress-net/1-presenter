class BusinessPresenter

  def initialize(model, view)
    @model = model
    @view = view
  end

  def info
    "#{first_name} #{last_name} <#{email}>"
  end

  private

  def method_missing(*args, &block)
    @model.send(*args, &block)
  end

end