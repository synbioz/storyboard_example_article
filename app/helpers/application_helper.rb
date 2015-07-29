def retrieve_subview_with_tag(topview,tag)
  retval = topview.view.subviews.find { |v| v.tag == tag }
  retval ||= topview.view
end

def generate_custom_title(name)
  "Résultat : #{name}"
end

def gender_detect(gender, subject = false)
  if subject
    gender == 0 ? "Il" : "Elle"
  else
    gender == 0 ? "un homme" : "une femme"
  end
end

def generate_description_text(name, gender, age, weight, size)
  "#{name.capitalize} est #{gender_detect(gender)} de #{age} ans. #{gender_detect(gender, true)} pése #{weight}kg pour une taille de #{size}m."
end

def calcul_imc(weight, size)
  (weight.to_i / (size.to_f**2)).round(2).to_s
end

def imc_category(imc)
  i = imc.to_f
  case
  when i > 40
    "obésité morbide ou massive"
  when i >= 35
    "obésité sévère"
  when i >= 30
    "obésité modérée"
  when i >= 25
    "surpoids"
  when i >= 18.5
    "corpulence normale"
  when i >= 16.5
    "maigreur"
  else
    "famine"
  end
end