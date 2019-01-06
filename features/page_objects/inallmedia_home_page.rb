##
# Declares GoogleHomePage as a page object.
class InAllMediaHomePage
  include PageObject

  img(:iam_logo, :id => 'logo')

  def at?()
    [
      iam_logo_element.present?,
    ].all?
  end
end
