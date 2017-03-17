# VLCircularTransition
ViewController Circular Transition using all Swift 3.0

## Synopsis

VLCircularTransition gives you the leverage to customize a viewcontroller transition animation into a smooth circular transition.

## Demo
[![vlcircularTransitionGif.gif](https://s16.postimg.org/paqqjdwlx/vlcircular_Transition_Gif.gif)](https://postimg.org/image/u9e8xx0ep/)

## ScreenShot

A Demo screenshot displaying Facebook & Google Sign In Buttons.

[![1.png](https://s8.postimg.org/vss0m65ol/image.png)](https://postimg.org/image/w5jescny9/)

Button changes its shape to cirle & gives a ripple effect.

[![2.png](https://s29.postimg.org/5lbswzldj/image.png)](https://postimg.org/image/ljkin4flf/)

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
