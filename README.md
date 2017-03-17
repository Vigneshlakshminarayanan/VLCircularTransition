# VLCircularTransition
ViewController Circular Transition using all Swift 3.0

## Synopsis

VLCircularTransition gives you the leverage to customize a viewcontroller transition animation into a smooth circular transition.

## Demo
[![vlcircularTransitionGif.gif](https://s16.postimg.org/paqqjdwlx/vlcircular_Transition_Gif.gif)](https://postimg.org/image/u9e8xx0ep/)

## Code Example
Declare & Initialize VLCircularTransition.

```
let transition = VLCircularTransition()

```
Set the required callback for presenting ViewController
```

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = self.facebookButton.center
        transition.circleColor = self.facebookButton.backgroundColor!
        
        return transition
        
    }
    
    ```
    
Set the required callback for dismissing ViewController

 ```
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        transition.transitionMode = .dismiss
        transition.transitionMode = .dismiss
        transition.startingPoint = self.facebookButton.center
        transition.circleColor = self.facebookButton.backgroundColor!
        
        return transition
    }
    
  ```

## Installation

Can be a Direct Download or Cloning.

## Contributors

- Vignesh Lakshminarayanan

## Licence

The project was developed using Apple's Open-Source SDK making use of Swift Syntax. The code is free to use & download.  
