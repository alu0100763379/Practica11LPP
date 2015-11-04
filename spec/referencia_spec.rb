require 'spec_helper'
require 'referencia'

describe Referencia do
  

      before :each do
        @referencia = Bibliografia.new(["Hector","Alejandro"],"La sala de informatica","443","Alpachino","Primera","2015","20")
      end

  describe 'Definicion de espectativas y pruebas' do
    it "Constructor: se ha creado el objeto" do
      @referencia.should be_an_instance_of Bibliografia
    end
    
    it "Debe existir uno o mas autores" do
      @referencia.autor.length.should_not be 0
    end
    
    it "Debe existir un titulo" do
      expect(@referencia.titulo).to eq("La sala de informatica")
    end
    
    it "Debe existir una serie" do
      expect(@referencia.serie).to eq("443")
    end
    
    it "Debe existir una editorial" do
      expect(@referencia.editorial).to eq("Alpachino")
    end
    it "Debe existir un numero de edicion" do
      expect(@referencia.edicion).to eq("Primera")
    end
    it "Debe existir una fecha de publicacion" do
      expect(@referencia.fecha).to eq("2015")
    end
    it "Debe existir uno o mas numeros isnb" do
      @referencia.isbn.length.should_not be 0
    end
    
  end

end
