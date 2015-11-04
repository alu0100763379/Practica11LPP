require 'spec_helper'
require 'referencia'

describe Referencia do
  

      before :each do
        @referencia = Bibliografia.new("Hector","La sala de informatica","443","Alpachino","Primera","2015","20")
      end

  describe 'Autor' do
    it "Constructor" do
      expect(@referencia).to eq("Hector","La sala de informatica","443","Alpachino","Primera","2015","20")
      #(@referencia.autor).should eql("Hector")
      #@referencia.should be_an_instance_of Bibliografia
    end
  end
  
end
