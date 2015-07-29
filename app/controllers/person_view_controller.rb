class PersonViewController < UIViewController
  GENDER_SELECT = 1
  NAME_TEXT     = 2
  WEIGHT_TEXT   = 3
  SIZE_TEXT     = 4
  AGE_TEXT      = 5


  def viewDidLoad
    @gender = retrieve_subview_with_tag(self, GENDER_SELECT)
    @name   = retrieve_subview_with_tag(self, NAME_TEXT)
    @weight = retrieve_subview_with_tag(self, WEIGHT_TEXT)
    @size   = retrieve_subview_with_tag(self, SIZE_TEXT)
    @age    = retrieve_subview_with_tag(self, AGE_TEXT)
  end

  def prepareForSegue(segue, sender:sender)
    if segue.identifier == "ComputsYourImcSegue"
      custom_imc           = calcul_imc(@weight.text, @size.text)
      custom_title         = generate_custom_title(@name.text)
      custom_description   = generate_description_text(@name.text,
                                                    @gender.selectedSegmentIndex,
                                                    @age.text,
                                                    @weight.text,
                                                    @size.text)
      custom_imc_category = imc_category(custom_imc)

      imc_view_controller = segue.destinationViewController
      imc_view_controller.custom_title.text = custom_title
      imc_view_controller.custom_description.text = custom_description
      imc_view_controller.custom_imc.text = custom_imc
      imc_view_controller.custom_imc_category.text = custom_imc_category
    end
  end

end