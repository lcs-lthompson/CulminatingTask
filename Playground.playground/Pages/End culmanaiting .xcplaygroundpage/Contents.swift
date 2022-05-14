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


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
let scale = 20

canvas.drawAxes(withScale: true, by: 20, color: .black)
//plan to make black and white tringles

func drawtriangle() {
    // draw the triangle
    t.currentPosition()
    t.currentHeading()
    
    
    t.right(by: 50)
    t.forward(steps: 3 * scale)
    
    
    
    
    
    
    
    t.currentPosition()
    t.currentHeading()
}


t.setPosition(to: Point(x: 100, y: 100))
drawtriangle()
