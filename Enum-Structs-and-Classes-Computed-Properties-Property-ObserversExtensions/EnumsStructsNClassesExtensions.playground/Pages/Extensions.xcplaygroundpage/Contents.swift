import Foundation
/*:
 [Table Of Contents](TableOfContents) | [Previous Playground Page](@previous)
 # Extensions
 
 ## Outcomes
 - Be able to add extension methods to existing classes
 - Be able to talk about why extensions can be useful, and come up with at least one (hypothetical) scenario that demonstrates where they might be useful
 - Find, organize, and share useful resources on this topic

 ## Extensions
 Start by opening [this page](https://www.codingexplorer.com/swift-extensions-part-2-nested-types-subscripts-protocols/) and reading through the section on "Methods in Swift Extensions"

 The following code is more-or-less copied from that page, both so that the instructor has it available for demo purposes and so that you can play around with it yourself.
 */
extension String {
    func printContents() {
        print(self)
    }
    mutating func doubleString() {
        self = self + self
    }
}

var myStr = "Hello"
myStr.printContents()

myStr.doubleString()
myStr.printContents()

myStr.doubleString()
myStr.printContents()
/*:
 ### Exercise
 
 ___
 ***DISCLAIMER***: *This is NOT how you work with Dates and Times in Swift.  It's a surprisingly deep topic and if you want to learn this (maybe because your app uses Dates and Times) then you should search the web for more detailed tutorials.*
 
 Specifically, it would be good to look for `Date` and `DateFormatter` tutorials
____
 
 Examine the following code.  It uses a built-in class called [DateComponents](https://developer.apple.com/documentation/foundation/datecomponents).
 You should first read any online resources (tutorials, documentation, etc) to get a 'Big Picture' idea of what a DateComponents object stores, and then examine the code below in order to get familiar with some of the things you can do with a DateComponents.
 
 Once you've done that add code below to use Optional Chaining to print out the date and time in a format that you like.  Put this after the comment that reads // YOUR CODE GOES HERE:
 
 After that add an extension to the `DateComponents` class that will print out the date in the format that you like.
 
 If you've got some extra time then try adding an extension to the `Date` class (not the `Date_Components_` class) that will print out the date in a format that you like.
 */
// This is a line of pure magic (meaning: You're not expected to understand it :)  )
// This will create a DateComponents object with the year, month, day, etc set
// according to the current date & time when this program is run
var now:DateComponents
now = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: Date())

// If you wanted to pick a particular date & time you could do so with the following line
//var now:DateComponents = DateComponents(year:2019, month:10, day:7, hour:11, minute:27, second:52)

// If we try to print out something directly we'll see the output indicating that it's an Optional:
print("The year is \(now.year)")

// We can use 'Optional binding' to run code ONLY when now.year has an actual value (when it's NOT nil):
if  let theYear = now.year {
    print("I know the year is \(theYear)")
    print("It's also safe to use the exclamation point, too: \(now.year!)")
}

// Let's unpack all the parts we need:
if  let y = now.year, // while we CAN put them all on one line, it reads easier if you put 1 per line:
    let mo = now.month,
    let d = now.day,
    let h = now.hour,
    let min = now.minute,
    let s = now.second{
    
    print("Year: \(y)")
    print("Month: \(mo)")
    print("Day: \(d)")
    
    print("Hour: \(h)")
    print("Minute: \(min)")
    print("Second: \(s)")
    
    print("\(y)-\(mo)-\(d) at \(h):\(min):\(s)")
}
// YOUR CODE GOES HERE:


/*:
 ### Exercise
 For this exercise, examine [the DateHelper extension](https://iosexample.com/a-swift-date-extension-helper/).  The [source code for the extension is freely available on GitHub](https://github.com/melvitax/DateHelper/blob/master/Sources/DateHelper.swift).
 
 1. Before anything else please be clear that this is an interesting example but you're not expected to remember anything about it.
 2. Start by skimming over the documentation in order to get a feel for what it's trying to do.
 3. Look at the source code briefly with the goal of figuring out how the author used the `extension` syntax to add all their nifty functionality to the Date class.
 4. This is OPTIONAL: If any of the examples looked like they might be useful in your app (or interesting for personal reasons) feel free to examine those example(s) further, and to try incorporating this extension into your own code.
 */
 /*:
 ## Finding more resources
 
 Open up Microsoft Teams, and find the wiki for your buliding.  In there add a page to keep track of good resources about this topic in Swift.
 Work with your group to search the web for good resources and add them to the wiki.  Please try to keep the information well-organized, but don't spend a ton of time obsessing about the organization.
 
 For this topic you may find it useful to look for useful, existing extensions, kinda like [at this website](https://theswiftdev.com/2017/10/06/useful-swift-extensions/).
 */
//:  [Table Of Contents](TableOfContents) | [Previous Playground Page](@previous)
