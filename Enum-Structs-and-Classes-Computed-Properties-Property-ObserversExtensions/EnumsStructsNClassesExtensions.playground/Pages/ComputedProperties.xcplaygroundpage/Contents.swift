import Foundation
/*:
[Table Of Contents](TableOfContents) | [Previous Playground Page](@previous) | [Next Playground Page](@next)
# Computed Properties and Property Observers

 ## Outcomes
 - Be able to define your own computed properties for a given struct (or class) that you've created
 - Be able to add property observers for a property on a given struct (or class) that you've created
 - Find, organize, and share useful resources on this topic

 ## What are computed properties?
 
 Please go to [this web page on Computed Properties](https://www.codingexplorer.com/computed-properties-in-swift/) - it seems to be a pretty good trade-off between having enough detail to get you started but it also zooms in on just the parts you need.
 
 Once you've done that, please do whichever of these exercises you'd like to do:
 
 ### Exercise Option #1
 Make sure that you've got a struct called Person which holds a person's personal name and their family name.  (You're invited to reuse the code from the other Playground page that used a Person struct as a demo there.
 
 Add a computed property called `FullName` which will return the person's full name.  This should be a string containing the family name and the personal name, separated by a space.  It's up to you whether the personal name goes first or the family name is listed first.
 
 ### Exercise Option #2
 Make sure that you've got a struct called Car which holds a information about an individual car.  For this exercise the only thing you need to keep track of is the speed of the car in miles per hour.
 
 Add a computed property called `SpeedKM` which will return the car's current speed in kilometers per hour.
 
 _Note:_ If you'd prefer you could store the speed in kph and have the computed property return the speed in mph instead.
 
  ### Exercise Option #3
 Create a struct called Point which holds the location of a point in Cartesian coordinates (i.e., something like (0, 3)  ).  You should then add a pair of computed properties to return the coordinates in polar notation (i.e., something like distance and theta)
 
 ## Property Observers
 
 Please go to [this web page on Computed Properties](https://www.codingexplorer.com/swift-property-observers/) - it's by the same author as the previous one and is concise while also giving a good overview.
 
 Once you've done that, please examine the following code (which is adapted from the example code on the website above) and then answer the questions below.
 
 **Note:** It's great to be aware of property observers, but once you know that they exist and their general purpose you'd probably be better off investing your time elsewhere in the language.
 */
struct User {
    
    var userStatusText: String {
 
        willSet(incomingStatus) {
            print("About to set status to:  \(incomingStatus)")
        }

        didSet(previousStatus) {
            if userStatusText != previousStatus {
                print("Changed status to \(userStatusText)")
            }
        }
    }
}

var earlyAdopter = User(userStatusText: "Starting Status")
earlyAdopter.userStatusText = "Trying out the new product - wooooot!"

earlyAdopter.userStatusText = "Trying out the new product - wooooot!"

earlyAdopter.userStatusText = "Liking the new product"

earlyAdopter.userStatusText = "Telling all my friends about the new product"
earlyAdopter.userStatusText = "Telling all my friends about the new product"

//: 1. What is the first message that you see printed in Xcode's debug output panel below?

//: 2. Based on that first message, which line of code triggered the willSet property observer?

//: 3. Was the `userStatusText` property set prior to the line of code that you identified in the previous question?  If it was set, did setting it that time trigger the willSet property observer?  If it did not, why do you think Swift chooses to skip calling willSet in that situation?

//: 4. What is the second message that you see?  Which property observer printed that message?

//: 5. Because you saw that second message, what do you know about the userStatusText property at that point in the program?

//: 6. What is the third message that you see?  Why do you NOT see a corresponding message from didSet observer along with it?

//: 7. In general, when is the `willSet` observer triggered?

//: 8. In general, when is the `didSet` observer triggered?

/*:
 ## Finding more resources
 
 Open up Microsoft Teams, and find the wiki for your buliding.  In there add a page to keep track of good resources about this topic in Swift.
 Work with your group to search the web for good resources and add them to the wiki.  Please try to keep the information well-organized, but don't spend a ton of time obsessing about the organization.

*/

//:  [Table Of Contents](TableOfContents) | [Previous Playground Page](@previous) | [Next Playground Page](@next)
