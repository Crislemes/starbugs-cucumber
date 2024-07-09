
require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/components.rb'
require_relative './pages/order.rb'

Before do
   @home = HomePage.new
   @checkout = CheckoutPage.new
   @order = OrderPage.new
   @popup = Popup.new
end

After do |scenario|
#print para todos os cenários 
 screenshots = page.save_screenshot("relatorios/screenshots/temp.png")
 attach(screenshots, "image/png", "Screenshot")
  
#prints para cenários apenas com falha

 #  if (scenario.failed?)
 # screenshots = page.save_screenshot("relatorios/screenshots/temp.png")
 #attach(screenshots, "image/png", "Screenshot")
 #end 
end