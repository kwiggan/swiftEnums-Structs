import Foundation
/*:
 [Table Of Contents](TableOfContents) | [Previous Playground Page](@previous) | [Next Playground Page](@next)
 # Enums (enumerations)

 ## Outcomes:
 - You should be able to use an Enum that someone else has defined.  The most typical use of this by a methods built into Swift/iOS will be to return an enum to you (or use as a 'dial' to choose how the method should act)
 - Use your enums with a switch (or if/else if) statement.
 - Be able to define your own enums
 - Find, organize, and share useful resources on this topic

 ### Warning: There's a lot of details about enums you can ignore
 Some examples:
 * Iterating over an enumeration
 * Associated Values - Using enums as a discriminated union (giving them values)
 * Raw Values - like in C, etc
 
 ## Using someone else's enum; using an enum with a switch
 1. Before looking through the following code please look through the [very, very brief documentation about the ComparisonResult enum](https://developer.apple.com/documentation/foundation/comparisonresult).  Use what you read there to inform your guesses/answers for the rest of this section
*/
var a : String = "Aardvark"
var b : String = "Beetle"

print( "These three versions all do the same thing - compare \"Aardvark\" to \"Beetle\"")
print( "Compare & print results, on two lines:")
var cr = a.caseInsensitiveCompare(b)
PrintComparisonResult( cr )

func PrintComparisonResult( _ result: ComparisonResult) {
    switch (result) {
    case ComparisonResult.orderedSame:
        print("ComparisonResult.orderedSame")
    case .orderedAscending:
        print("ComparisonResult.orderedAscending")
    case .orderedDescending:
        print("ComparisonResult.orderedDescending")
    }
}


print( "\nCompare & print results, on two lines WITHOUT variables:")
cr = "Aardvark".caseInsensitiveCompare("Beetle")
PrintComparisonResult(  cr )

print( "\nAardvark to Beetle    on ONE line without variables:")
PrintComparisonResult(  "Aardvark".caseInsensitiveCompare("Beetle") )

print( "\nBeetle to Aardvark")
PrintComparisonResult(  "Beetle".caseInsensitiveCompare("Aardvark") )

print( "\nBeetle to Beetle")
PrintComparisonResult(  "Beetle".caseInsensitiveCompare("Beetle") )

/*:
 ## Define your own enums
 
 Please visit [the WeHeartSwift.com web page for Tuples and Enums](https://www.weheartswift.com/tuples-enums/), then scroll down / search for 'Enums'.  Read the first two sections (up to and including 'dot syntax'), then skip the sections about Associated Values and Raw Values.
 
 Scroll / search for section "10.1 Game".  Use the Swift code sandbox to play around with defining your own syntax.  If you'd like then do feel free to try making the game that's described there (if you want to do this you may need to skim/read through the section on tuples in order to pass the tests).
 
*/

/*:
## Finding more resources

Open up Microsoft Teams, and find the wiki for your buliding.  In there add a page to keep track of good resources about enums in Swift.
Work with your group to search the web for good resources and add them to the wiki.  Please try to keep the information well-organized, but don't spend a ton of time obsessing about the organization.
*/
//:  [Table Of Contents](TableOfContents) | [Previous Playground Page](@previous) | [Next Playground Page](@next)
