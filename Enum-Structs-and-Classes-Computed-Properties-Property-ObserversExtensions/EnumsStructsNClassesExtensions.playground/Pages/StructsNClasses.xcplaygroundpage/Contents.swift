import Foundation
/*:
 [Table Of Contents](TableOfContents) | [Previous Playground Page](@previous) | [Next Playground Page](@next)
 # Structs & Classes
 ## Outcomes
 - Be able to explain why a struct (or class) is better than keeping track of releated data with a pile(s) of individual variables.
 - Be able to read code that creates a basic struct/class, including recognizing properties, being able to trace methods that use properties, and init methods (usually called a constructor in other languages).
 - Be able to understand how to use a struct/class that someone else made & gave to you (i.e., that's part of the Standard Swift Library, or part of iOS)
 - Find, organize, and share useful resources on this topic
 
 [Apple docs for Swift V5](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)

 ## Why are structs & classes useful?
 
 Start by examining the following code.  Please do run the code (everything up to the questions listed below this chunk of code), please ready through the code, and get a feel for what it's going.
 
 The questions below the code will guide you through this in more detail, including the error that you'll be asked to find.
 
 */
print( "Why are structs & classes useful? ==================================" )
func PrintPerson(   _ name_personal: String, _ name_family: String, _ age: Int, _ interestingFact: String) {
    print( "Person: \(name_personal) \(name_family), age \(age)")
    print("\tInteresting fact: \(interestingFact)")
}

var name_pers_mary = "Mary"
var name_fam_mary = "Smithers"
var age_mary = 23
var fact_mary = "Likes broccoli"

var name_pers_mark = "Mark"
var name_fam_mark = "Smith"
var age_mark = 38
var fact_mark = "Likes radishes" // seriously, these are the most boring "interesting facts"

PrintPerson(name_pers_mary, name_fam_mary, age_mary, fact_mary)
PrintPerson(name_pers_mark, name_fam_mark, age_mary, fact_mark)
// Run all the code up to here, and then make sure to look at the Debug Output in the panel at the bottom of Xcode
//: ### Questions
//: 1. Based on the output what is the purpose of the above code?
//The purpose of the above code is to print the person information for Mary and Mark, based on the properties assigned in the parameter of the function PrintPerson
//: 2. What part of the code prints the information about each person?
//The Print statements retrieve the information from the variable properties and thier assigned values, then match them to the properties assigned in the function, then print those values.
//: 3. Why is it good to arrange the code this way?  Please describe a situation in which this approach is better than just printing out all the user's info directly (using a print statement) each time we want to print a person's info?
//This arrangement is good because it enables the program to add multiple persons information without retyping the words "person","age", or "interesting" "fact" each time a new person is added.
//A situation which this might be most useful is when a school admissions office is storing data for new students and thier applications.
//: 4. What error(s) did you find in the above code?  _Hint:_ Make sure that each person's information is printed correctly
// The code printed mary age where mark age should be.
//: 5. Why was it easy for the programmer to make the mistake that you found in the prior question?
//Because they manually typed the printed variables which can sometimes get confusing
//: 6. Imagine that you have 5, or 10, or more people to keep track of.  Do you think this sort of error would become more common or less common, and why?
// this would be more common because it's easy to get confused when you have to continuously remember the order and names in which you have to follow
//: 7. What if we added more information about each person?  Like, their favorite hobbies, the number of kids they have, their height, weight,etc.  Discuss with your group how this would affect the overall program if the above code was actually part of a larger, more complicated program
//This would increase the possiblities for mistakes like the above one to happen, and it would take up alot of time to accomplish this goal
/*:
 ## Same program, this time with structs/classes:
 
 Let's try re-writing the previous program, this time using structs & classes:
 
 */
// A struct or class defines a 'bucket' of information that the program
// will carry around together.  Individual
struct Person {
    
    // Every Person has a personal and family name:
    var name_personal: String
    var name_family: String
    // every person has an age:
    var age: Int
    var interestingFact: String
    // The 'vars' above are called _properties_ when they're in a class
    
    // When we create a Person object, this method is run
    // this method **MUST** ensure that all the properties above
    // are given a starting value
    init( _ n_pers: String, _ n_fam: String, _ a: Int, _ iFact: String) {
        self.name_personal = n_pers
        self.name_family = n_fam
        self.age = a
        self.interestingFact = iFact
        print("\t\tFinished with the init method")
    }
    
    // This method allows us to tell an individual Person object to print it's info:
    func Print() {
        print( "Person: \(self.name_personal) \(self.name_family), age \(self.age)")
        print("\tInteresting fact: \(self.interestingFact)")
    }
}
print("\nSame program, this time with structs/classes: ======================")

var Mary = Person("Mary", "Smithers", 23, "Likes broccoli")
var Mark = Person("Mary", "Smithers", 23, "Likes broccoli")

print( "Made two Person objects / instances")

Mary.Print()
Mark.Print()
// Run all the code up to here, and then make sure to look at the Debug Output in the panel at the bottom of Xcode
//: ### Questions
//: 1. Based on the output what is the purpose of the above code?
// The purpose of the code is to print mark and mary personal information
//: 2. Which line creates the 'Mary Smithers' object / instance?  (An **object** or an **instance** refers to a single, individual Person.
// Line 92
//: 3. Which line creates the 'Mark' object?
// Line 93
//: 4. When does the `init()` method get run? (How did you know?) Follow-up: did you do anything to call the init method, or did Swift call it for you?
// The init method gets run in line 76. It will run when you create a persons object. The init method was called by using its key word "init"
//: 5. What is the purpose of the `init()` method?  (There may be a comment in the above code that helps you understand this)
//This method ensures that all the properties of the structure has a starting point.
//: 6. Given the purpose of the `init()` method, why does it make sense that `init()` would be called at that point in the program?
// it makes sense because the objects of the class has to match the properties of the structure. Therefore, once these objects gets called, the init will process the data, link it to the struct, then print.
//: 7. What line of the program caused Mary's information to be printed?  What line started that same process for Mark?
//Line 85 - the function method
//: 8. After the line that started the process of printing Mary's information, where did the program jump to?
//line 76 - the init method
//: 9. When the program was done printing Mary's info, where did the program jump back to?
//Line 97 and line 98
//: 10. Does this program have the same error that the previous version of the program had?
//no
//: 11. Would it be easier or harder for the programmer working on this version of the program to make the mistake that you found in the prior version of the program?
//It would be harder
//: 12. Imagine that you have 5, or 10, or more people to keep track of.  Do you think that this new approach would make it easier or harder to add a bunch more Person objects?
//It would make it easier because once those person objects gets added, you can just call the print method and the persons data gets printed
//: 13. What if we added more information about each person?  Like, their favorite hobbies, the number of kids they have, their height, weight,etc.  Discuss with your group how this would affect the overall program if the above code was actually part of a larger, more complicated program
// This would just add more info to the struc, init and function but recieve the same end result with the proficiency of the print statement once it is called.
//: 14. Talk with your group about how easy it is to understand each program.  What if you didn't have to define the struct yourself?  How easy would it be to understand the program (including making educated guesses about what the Print method might do) if someone provided you the Person class/struct?

//: 15. Add a method, named `changeName( persName: String)` which will allow someone do something like this: `Mary.changeName("Mari")`.  _Note:_ You may need to look up the `mutable` keyword to make this work

/*:
 ## Using a class/struct that someone else made for you
 
 The instructor found a tutorial online about [How To Draw Rectangle View Use Swift In iOS App](https://www.dev2qa.com/how-to-draw-rectangle-view-use-swift-in-ios-app/).  Open that up, skim through it, and then go back and focus on Step 2.2 (the one with the code in it).
 1. Work with your group to identify any structs or classes in that code.
 */

//: 2. Verify your educated guesses by looking them up in the documentation (either Xcode or online).  For each one, identify whether it's a class or a struct.
 
//: 3. Look at the code and identify any **properties** that are used. Again, look those up in the online docs.
 
//: 4. Look at the code and identify any **methods** that are used. Again, look those up in the online docs.

/*:
 ## Finding more resources
 
 Open up Microsoft Teams, and find the wiki for your buliding.  In there add a page to keep track of good resources about structs and classes in Swift.
 Work with your group to search the web for good resources and add them to the wiki.  Please try to keep the information well-organized, but don't spend a ton of time obsessing about the organization.

 If you'd like a suggested list of things that seems useful, you might try looking up the following:
 (These are notes from the instructor - if something doesn't make sense then ignore it :)  )
 
 - Differences between structs and classes
    * They're very similar
    * **Apple's advice is to use a strut unless you specifically need one of the features of a class**
    * You can later 'upgrade' your structs by replacing a single word in your definition
    * structs are passed by value (they're copied)
 - Foundational stuff:
    * Define
    * Instantiate
    * Access fields
    * Copy by value vs. reference
 - Properties
    * These are instance variables
    * Computed Properties: like C#-style properties (with getters and/or setters)
    * Property observers - if you don't want to implement computed properties
        + Also works on inherited properties, which you can't re-impl as computed properties
 - Methods
    * 'mutating' keyword to allow it to change the struct
    * self property
    * type methods (static methods)
    * Ignore the 'subscript' thing
    * init() : ctor
    * deinitializer:
        + ref-counting based destructors
        + this is why weak / unowned references exist
 */
//:  [Table Of Contents](TableOfContents) | [Previous Playground Page](@previous) | [Next Playground Page](@next)
