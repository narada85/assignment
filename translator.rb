class ArabicNumeralToEnglish
  ONES  = [""," one"," two"," three"," four"," five"," six"," seven"," eight"," nine"," ten"," eleven"," twelve"," thirteen"," fourteen"," fifteen"," sixteen"," seventeen"," eighteen"," nineteen"]
  
  TENS = ["",""," twenty"," thirty"," forty"," fifty"," sixty"," seventy"," eighty"," ninety"]
        
  def translator(numerals)
    numerals = numerals.to_i.abs
    
    return "zero" if numerals == 0
    
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