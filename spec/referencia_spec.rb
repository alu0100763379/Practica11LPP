require 'spec_helper'

describe Referencia do
  before :all do
    @referencia = Bibliografia.new('Universo Ruby') do
      autores 'Mariano Ruflas'
      fecha_publicacion 'Enero 18, 2012'
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

describe Libro do
  before :all do
    @libro = Libro.new('Programacion y Git') do
      autores 'Carmen Trujillo'
      fecha_publicacion 'Junio 21, 2014'
      serie 'Programacion 1'
     editorial 'Almac'
      edicion 'Tercera'
      isbn '278-553'
    end
  end
  
  it "Comprobar Fecha de Publicacion" do
    expect(@libro.fecha).to eq('Junio 21, 2014')
  end
  
  it "Comprobar Autor" do
    expect(@libro.autor).to eq(['Carmen Trujillo'])
  end
  
  it "Comprobar Titulo" do
    expect(@libro.titulo).to eq('Programacion y Git')
  end
  
  it "Comprobar Editorial" do
    expect(@libro.editorial).to eq('Almac')
  end
  
  it "Comprobar Edicion" do
    expect(@libro.edicion).to eq('Tercera')
  end
  
  it "Comprobar Serie" do
    expect(@libro.serie).to eq('Programacion 1')
  end
  
  it "Comprobar Identificador" do
    expect(@libro.isbn).to eq('278-553')
  end
  
end