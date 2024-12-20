

# An interactive learning tool / video game. 

For students of 7th grade or higher in German Gymnasium.  

To use you need to download the Processing application [processing.org/download](https://processing.org/download).
Open one of the files from the repository  with the ending ".pde" (e.g. Monster_Functions.pde) and push play on the upper left corner.  

The goal is to hit the monsters that appear in random positions with a ball. 
To hit the monsters a parameter of the function must be calculated (proportionalitätsfaktor, gesamtgröße).

The start position varies depending on the target relation. 

In the moment implementet are 

- direct proportional relations (linear functions throw the origin, f=ax)
- indirect proportional relations (hyperbolic functions, f=a/x)
- polynomials is prepared but not working in the moment


## how to use

Initially click on the screen to make shure the window is active

1. use your keybord to enter the parameter 
2. use ENTER to release the ball (shoot)
3. use SPACE to refresh and calculate new monsters at new positions
4. repead at 2

## Variations

- With the key "t" you can change from direct proportional to indirect proportional relations to polynomials
- with the key "r" the vertical origin is randomly shifted
- with the key "f" the equation (function) is shown on the top right of the window


## To Do

The code can be extended to fit different kind of functions, such as

- polynomials of any degree (practical would be up to third or fourth degree)
- harmonic functions (sin, cos)

