class ArabicNumeralToEnglish
  ONES  = [""," one"," two"," three"," four"," five"," six"," seven"," eight"," nine"," ten"," eleven"," twelve"," thirteen"," fourteen"," fifteen"," sixteen"," seventeen"," eighteen"," nineteen"]
  
  TENS = ["",""," twenty"," thirty"," forty"," fifty"," sixty"," seventy"," eighty"," ninety"]
  
  MEGA  = [""," thousand"," million"," billion"," trillion"," quadrillion"," quintillion"," sextillion"," septillion"," octillion"," nonillion"]
       
  def translator(numerals, mega=0)
    numerals = numerals.to_i.abs
    
    return "zero" if numerals == 0
    
    mega_values = (numerals / 1000)
    ones_tens = numerals % 100
    hundreds = (numerals / 100) % 10
    
    # init the output
    val = ""
    
    # do hundreds
    if hundreds > 0
     val = "#{ONES[hundreds]} hundred"
    end
    
    # do ones and tens
    if ones_tens < 20
     val += ONES[ones_tens]
    else
     val += TENS[(ones_tens / 10)] + ONES[(ones_tens % 10)]
    end
    
    # add mega modifier only if there
    if val != ""
     val += MEGA[mega]
    end
    
    # do mega numbers & append result, more than 999
    if mega_values > 0
     return val = "#{translator(mega_values, mega+1)+val}"
    else
     return val
    end
  end
end

unless ARGV[0].nil?
  object = ArabicNumeralToEnglish. new
  english_wordings = object.translator(ARGV[0])
  
  # display translated output 
  puts english_wordings
else
  puts "Please run this program with arabic numerals as first argument!"
end