class ArabicNumeralToEnglish            
  def translator(numerals)
    numerals = numerals.to_i.abs
    
    if numerals == 0
      return "zero" 
    else
      #manage rest of the numbers here
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