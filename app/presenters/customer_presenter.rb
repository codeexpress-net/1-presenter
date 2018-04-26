class CustomerPresenter

  def initialize(model, view)
    @model = model
    @view = view
  end

  def info
    "#{first_name} #{last_name[0]}"
  end

  private

  def method_missing(*args, &block)
    @model.send(*args, &block)
  end

end