#  This Step By Step .md file is their to explain the simple functions and code snippets

## ContentView.swift

ContentView is the View on your screen
```
struct ContentView: View
```
---
 Stretch the layout
```
Spacer()
```
---
Arranges the children  in a vertical line
```
VStack {}
```
---
Arranges the children  in a horizontal line
```
HStack {}
```
---
.resizable( ) is inside a image function necessary that you can change the image size. without the resizable function the image is fixed
```
.resizable() 
```
---
.scaledToFill() is a view that scales this view to fit its parent
```
.scaledToFill()
```
---
Function that is available to stretch the image self through the notch area
```
.edgesIgnoringSafeArea(.all)
```
---
The Function where all the visual frontend is
```
var body: some View {}
```
---
Shows a simple Text
```
Text("Harry Potter Quotes App")
```
---
Scroll function to make scrolling inside frontend possible
```
ScrollView(.horizontal, showsIndicators: false)
```
---
Make the visual line (between text)
```
Divider()
```
---
function make a square image to a circle image
```
.clipShape(Circle())
```
---
Makes the circle stroke visible
```
.overlay(Circle().stroke(Color.gray, lineWidth: 2))
```
---
Function is necessary the show the App live time by the preview
```
struct ContentView_Previews: PreviewProvider {
```
---
The overlay covers the first view like a second layer
```
overlay(Rectangle())
```
---
Inside a colar gradient you can choose the gradient color.
```
 LinearGradient(gradient: Gradient(colors: [.clear,.pink]), startPoint: .center, endPoint: .topLeading))
```
---
Clips the view to its bounding rectangular frame.
```
.clipped()
```
