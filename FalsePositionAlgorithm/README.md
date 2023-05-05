False Position Algorithm
------
This function uses the false position method to find the root of a given equation.
___________

**Inputs:** function to evaluate, an upper and lower x-bound that brackets the root

*Optional Input:* desired error, maximum iterations
___________

**Outputs:** root, change in x, error, number of iterations
___________

**Example:** Input to find the upper root of the function -x^2+5

falsePosition(-x^2+5, 2, 4)
