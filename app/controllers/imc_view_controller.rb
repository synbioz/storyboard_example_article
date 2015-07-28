class ImcViewController < UIViewController
  TITLE_LABEL      = 20
  DESCRIPTION_TEXT = 21
  IMC_TEXT         = 22
  IMC_CATEGORY     = 23

  def awakeFromNib
    # make sure our views are loaded
    self.view
  end

  def viewDidLoad
    @title_label = retrieve_subview_with_tag(self, TITLE_LABEL)
    @description_text = retrieve_subview_with_tag(self, DESCRIPTION_TEXT)
    @imc = retrieve_subview_with_tag(self, IMC_TEXT)
    @custom_imc_categorie = retrieve_subview_with_tag(self, IMC_CATEGORY)
  end

  def custom_title
    @title_label
  end

  def custom_description
    @description_text
  end

  def custom_imc
    @imc
  end

  def custom_imc_category
    @custom_imc_categorie
  end
end