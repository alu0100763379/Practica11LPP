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
      nombre_serie 'Programacion 1'
      nombre_editorial 'Almac'
      numero_edicion 'Tercera'
      identificador '278-553'
    end
  end
  it "Comprobar que es instancia de Libro" do
      expect(@libro.instance_of?(Libro)).to eq(true)
    end
  it "Comprobar que es hijo de Bibliografia" do
    expect(@libro.is_a?(Bibliografia)).to eq(true)
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

describe Revista do
  before :all do
    @revista = Revista.new('Programacion') do
      autores 'Elsa Eposito'
      fecha_publicacion 'Marzo 12, 2015'
      identificador '825-611'
    end
  end
  
  it "Comprobar que es instancia de Revista" do
      expect(@libro.instance_of?(Revista)).to eq(true)
  end
  
  it "Comprobar que es hijo de Bibliografia" do
    expect(@libro.is_a?(Bibliografia)).to eq(true)
  end
  
  it "Comprobar Fecha de Publicacion" do
    expect(@revista.fecha).to eq('Marzo 12, 2015')
  end
  
  it "Comprobar Autor" do
    expect(@revista.autor).to eq(['Elsa Eposito'])
  end
  
  it "Comprobar Titulo" do
    expect(@revista.titulo).to eq('Programacion')
  end
  
  it "Comprobar Identificador" do
    expect(@revista.issn).to eq('825-611')
  end
end