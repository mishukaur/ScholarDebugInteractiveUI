import SwiftUI


//Hi scholar! Wow, this is already an awesome start! This is a great question -- bindings can be tricky at first. Let's examine your errors.
//Can you tell me what your first error says?

//scholar will say: Cannot convert value of type 'String' to expected argument type 'Binding<String>'

//Great! Now we know where to start -- it looks like we have a syntax issue. Do you remember what the slides said about binding syntax? No worries if not, we can look it up together!

//scholar will remember the $ or we can pull up the slide and look at it together

//scholar sees a new error: Cannot find '$name' in scope

//Great, this means we're closer to solving the problem! Let's take a look at where you defined name. Do you see what may be causing the error?

//hopefully scholar sees need to change let to @State
//if scholar does not see, I'll say: Can you explain line 21 to me? and hopefully they see from there -- if not I'll say: That makes sense! But it seems that's causing our error. Let's see what the slides say about creating name.

//Yayy, now you only have 1 error left! Great job! Let's take a look at it. Can you tell me what it is?

//scholar: Cannot find 'good' in scope

//Hmmm, what is good?

//hopefully scholar realizes they made a typo

//scholar sees another error: Cannot convert value 'food' of type 'String' to expected type 'Binding<String>', use wrapper instead

//Hmmm, this looks really similar to the error we had before, right? Do you remember what we needed to solve this error?

//hopefully scholar remembers the $. if not, we can look at the "Enter name" text field closer.

//Awesome, we have no more errors! But it looks like we're still having a problem getting the alert to pop up. Can you explain your alert code to me?

//scholar explains code

//Hmmm, where do you think the issue might be?

//hopefully scholar says something along the correct lines lol

//That's a great start! This was also tricky for me when I first learned this, but Googling helped! Let's take a look at this link: https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-an-alert
//What are some changes you see between your code and the code on the website?

//hopefully scholar sees need to set alert to true

//Wow, now you have the alert showing up!!! Great job!!!

//scholar: There's still one more issue: the name and favorite food aren't being replaced

//Hmm, you're right. Let's take a look at the alert text and see what the issue might be. Do you see anything?

//Hopefully scholar sees syntax issue with interpolation ; if not i'll pull up the slides for string syntax

//Great job!! These were some tricky errors but you did awesome, and now we know how to use our resources and google!

struct ContentView: View {
    @State private var name = ""
    @State private var food: String = ""
    @State private var showAlert = false

    var body: some View {
        VStack {
            Text("Tell us about yourself!")
                .font(.title)

            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()

            TextField("Favorite food", text: $food)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("Submit") {
                showAlert = true
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .alert("Thanks, \(name)! We now know your favorite food is \(food)!", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
