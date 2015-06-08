require './translator'
 
describe ArabicNumeralToEnglish do
  before :each do
   @arabic_to_en = ArabicNumeralToEnglish.new
  end
  
  context "with invalid argument" do
    
    it "should return zero for \'abc\'" do
      @arabic_to_en.translator('abc').should eql 'zero'
    end
  end

  context "with valid argument" do
    
    it 'should not be empty' do
      @arabic_to_en.translator(00001).should_not eql ''
    end
     
    it 'should return one for 1' do
      @arabic_to_en.translator(1).should eql ' one'
    end
    
    it 'should return nineteen for 19' do
      @arabic_to_en.translator(19).should eql ' nineteen'
    end
    
    it 'should return sixty for 60' do
      @arabic_to_en.translator(60).should eql ' sixty'
    end
    
    it 'should return hundred for 100' do
      @arabic_to_en.translator(100).should eql ' one hundred'
    end
    
    it 'should return one hundred one for 101' do
      @arabic_to_en.translator(101).should eql ' one hundred one'
    end
    
    it 'should return thousand for 1000' do
      @arabic_to_en.translator(1000).should eql ' one thousand'
    end
  end

end
