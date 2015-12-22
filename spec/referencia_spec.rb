require 'spec_helper'

describe Referencia do
  before :all do
    @referencia = Bibliografia.new('Universo Ruby') do
      autor 'Mariano Ruflas'
      fecha 'Enero 18, 2012'
    end
  end
  
  it "Comprobar Fecha de Publicacion" do
    expect(@referencia.fecha).to eq('Enero 18, 2012')
  end
  
  it "Comprobar Autor" do
    expect(@referencia.autor).to eq(['Mariano Ruflas'])
  end
  
  it "Comprobar Titulo" do
    expect(@referencia.titulo).to eq('Universo Ruby')
  end
end