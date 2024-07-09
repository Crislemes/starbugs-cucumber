Dado('que iniciei a compra do item:') do |table|
   @product = table.rows_hash
   
   @home.open
   @home.buy(@product[:name])

  end
  
  Quando('aplico o seguinte cupom: {string}') do |cupom|
  @checkout.set_discount(cupom)

  end
  
  Então('o valor final da compra deve ser atualizado para {string}') do |preco_final|
    @checkout.assert_total_price(preco_final)
   
  end

  Então('devo ver a seguinte notificação: {string}') do |notice|
    @checkout.assert_notice(notice)

  end
  
  Então('o valor final deve permanecer o mesmo') do
    @checkout.assert_total_price(@product[:total])

  end
  
  
  