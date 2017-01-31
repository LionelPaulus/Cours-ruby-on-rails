module ApplicationHelper

  #Formate une date avec protection contre les nils values
  def sexy_date(date)

    #methode 3 -> Ternaire
    return date.nil? ? "Date inconnue" : date.strftime("%d/%m/%Y")

    #Methode 1 -> TRY
    return date.try(:strftime, "%d/%m/%Y")

    #Methode 2 -> IF
    if date.nil? #date == nil
      return "Date inconnue"
    else
      return date.strftime("%d/%m/%Y")
    end

    #mehode 4 -> Rescue
    return date.strftime("%d/%m/%Y") rescue "Date inconnue"

  end

  def safe_time_ago_in_words(date)
    return time_ago_in_words(date) rescue "Date inconnue"
  end

end
