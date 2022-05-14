//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// make Scale
let scale = 20

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

func drawTriangle() {
    //plan to draw a triangle
    
    t.forward(steps: 3 * scale)
    t.left(by: 120)
    t.forward(steps: 3 * scale)
    t.left(by: 120)
    t.forward(steps: 3 * scale)
    t.left(by: 120)
    //finsihed
}

func moveOverForNewTriangle(){
    t.penUp()
    t.forward(steps: 3 * scale)
    t.penDown()
}

// Get into starting position for new triangle
t.penUp()
t.left(by: 90)
t.forward(steps: 0 * scale)
t.right(by: 90)
t.penDown()



// move to position

for _ in 1...10 {
    // draw a triangle
   
    drawTriangle()
    moveOverForNewTriangle()
}

//get into position for the second row of triangles

for _ in 1...10{
t.penUp()
    t.right(by: 180)
    t.forward(steps: 33 * scale)
    t.right(by: 90)
    t.forward(steps: 3 * scale)
    t.right(by: 90)

for _ in 1...11 {
  // draw an Triangle
    
    drawTriangle()
    moveOverForNewTriangle()
}
  }








/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
