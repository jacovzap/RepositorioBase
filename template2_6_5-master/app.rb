require 'sinatra'
require './config'
require './lib/calcular_cambio.rb'

get '/' do
    erb :vista_cambio

end


post '/cambio' do
    monto_venta_ingresado = params[:monto_venta_ingresado]
    efectivo_ingresado = params[:efectivo_ingresado]
    @cambio = calcular_cambio(monto_venta_ingresado.to_i, efectivo_ingresado.to_i)
    erb :vista_mostrar_cambio
end

