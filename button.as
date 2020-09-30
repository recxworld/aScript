package 
{ 
    import flash.display.Sprite; 
 
    public class ClickExample extends Sprite 
    { 
        public function ClickExample() 
        { 
            var child:ChildSprite = new ChildSprite(); 
            addChild(child); 
        } 
    } 
} 
 
import flash.display.Sprite; 
import flash.events.MouseEvent; 
 
class ChildSprite extends Sprite 
{ 
    public function ChildSprite() 
    { 
        graphics.beginFill(0xFF0000); 
        graphics.drawRect(0,0,100,100); 
        graphics.endFill(); 
        addEventListener(MouseEvent.CLICK, clickHandler); 
    } 
} 
 
function clickHandler(event:MouseEvent):void 
{ 
    trace("clickHandler detected an event of type: " + event.type); 
    trace("the this keyword refers to: " + this); 
}