##
# Declares GoogleHomePage as a page object.
class InAllMediaHomePage
  include PageObject

  img(:iam_logo, :xpath => '//img[contains(@src, "inallmedia.com")]')

  def at?()
    [
      iam_logo_element.present?,
    ].all?
  end
end
