require './lib/calcular_cambio.rb'


RSpec.describe "debe devolver el cambio correctamente" do
    it "deberia devolver el numero 20, si envio 300 como monto venta y 320 como efectivo" do
        montoVenta = 300
        efectivo = 320
        resultado = calcular_cambio(montoVenta, efectivo)
        expect(resultado).to eq(20)
    end
end


