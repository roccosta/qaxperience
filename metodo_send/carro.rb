    class Carro
      attr_accessor :marca, :modelo, :ano
    end  
    ##############################################################
    carro1 = Carro.new
    carro1.marca='Honda'
    carro1.modelo='CRV'
    carro1.ano='2015'

    p 'Carro atribuído direto'
    p carro1
    p ''
    ##############################################################
    carro2 = Carro.new
    carro2.send('marca=', 'Hyundai')
    carro2.send('modelo=', 'Azera')
    carro2.send('ano=','2015')

    p 'Carro atribuído pelo Send'
    p carro2
    p ''
    ##############################################################
    carro3 = Carro.new
    params = {marca: 'Toyota', modelo: 'Corolla', ano: '2016'}

    params.each do |key, value|
      carro3.send("#{key}=", value)
    end

    p 'Carro atribuído no loop com Send:'
    p carro3