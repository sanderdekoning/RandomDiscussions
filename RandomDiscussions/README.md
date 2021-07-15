# RandomDiscussions - Sander de Koning

## Discussions in this project:
1. The ​lazy method on ​Sequence allows some operations like ​map ​and ​filter to be applied lazily. What would it be useful for? Explain what it means and its implementation in the Swift standard library. When are the operations actually executed? How is wrapping involved? How would you add a lazy operation?

2. Consider a ​​GradientLayer (let's call it ​gl​) displaying a red to blue vertical gradient. Write some code to animate ​gl so that it smoothly transitions from its current state to a green to yellow ​horizontal gradient. ​How would you allow scrubbing the animation using a ​UISlider​ control?
Note:​ if the animation can't be controlled, maybe time can be bent.

3. ​Write some code replicating the “counter effect” shown in the video (attached to the email). This counter component displays a settable number. When tapping on it it starts spinning in a slot machine-like manner. The written code should be simple and easy to
integrate in a project.


## Answers
For point `1.` of the discussion please go to the `LazySequence` package `README.md`, and run the package tests for the demonstration.
For point `2.` and `3.` please go to the `CounterEffectView` package, `GradientView`  package, and `RandomDiscussions` project.
Run the project in an iOS simulator for the demonstration.
