require 'spec_helper'
require 'referencia'

describe Referencia do
  
  describe 'Referencia' do
      before :each do
        @referencia = Referencia.new("Hector","La sala de informatica","443","Alpachino","Primera","2015","20")
      end
  end
  describe 'prueba' do
    it "Constructor" do
      expect(@referencia.autor).to eq("Hector")
    end
  end
  
end
