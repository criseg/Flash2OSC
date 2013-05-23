
package
{
	import org.tuio.osc.*;
	import org.tuio.connectors.*;
	
	import flash.display.Sprite;
	
	public class Flash2OSC extends Sprite
	{
		
		private var oscManager:OSCManager ;
		public function Flash2OSC()
		{
			oscManager = new OSCManager(null, new UDPConnector("127.0.0.1", 12000, false));
			
			sendOSCMessage();
		}
		
		private function sendOSCMessage():void
		{
			var myMsg:OSCMessage = new OSCMessage();
			myMsg.address = "/my/msg/target";
			myMsg.addArgument("s", "Hello World");
			
			oscManager.sendOSCPacket(myMsg);
		}
	}
}