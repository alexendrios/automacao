require 'cucumber'
require 'rspec'
require 'pry'
require 'appium_lib'



def caps
    {
        caps: {

            #udid: '5037',
            platformName: 'ANDROID',
            #platformVersion: '8.0.0',
            deviceName: 'ASUS_X00HD_1',
            app: "C:\\automocao\\projeto_bb\\sistema_hbk_mobile\\features\\app\\android\\main-debug.apk",
            appPackage: "br.com.bb.investimentosbb",
            appWaitActivity:"layer.view.MainActivity",
            appWaitDuration: 3600
        }
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
