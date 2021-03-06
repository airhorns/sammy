Questions: do you always need to have m or can you just use a helper method where you get the number of elements in a, that way you limit the number of parameters you pass always?

1. More on list intersections

Algorithm: commonElementsList( a, m, b, n)
Input: Two arrays, a and b, with m and n distinct String elements respectively
Output: A list of String elements common to both arrays

function commonElementsList( a, m, b, n) {
	if( listIntersection( a, m, b, n ) > 0 )
	{
		int numCommonElements <-- listIntersection ( a, m, b, n )
		String[] commonElementsList <-- new String[numCommonElements]
		// creates an empty list containing 'numCommonElements'  number of empty elements
		int index <-- 1 // index of new array in which values are added
			for i <-- 1 to m do
				if search(b, n, a[i])
				{
					commonElementsList[index] <-- a[i]
					index <-- index + 1
				} 
		return commonElementsList
	}
}

2. Even more on list intersections
	Algorithm: numRepeats(a, m, b, n) 
	Input: Two arrays, a and b, containing m and n String elements respectively
	Output: An array of triplets printed to screen of which, the first value is the position number of the first occurance of the repeated String in array a, the second value is the number of times that String occurs within its own array, and the third value is the number of times the String occurs in array b.
			//is the next line too specific?
			
a) a helper method will be instituted, used further on in this assignment. 
	Algorithm: counter(a, m, val)
	Input: An array of m elements and a value (val) which is to be found within array a
	Output: The number of times val occurs within array a
	
function counter(a, m, val) {
	int i <-- 0
	from index 1 to m of array a { 
		if( a[index] == a[i] ) {
			i <-- i + 1 
		}
	}
	return i
}

b) numRepeats continued:

function numRepeats(a, m, b, n) {
	int[] numRepeats <-- new int[3]
	int counter <-- 0
	
	//ARRAY A
	for index <-- 1 to m do
		if search( b, n, a[index] )
			numRepeats[1] <-- index
			numRepeats[2] <-- counter( a, m, a[index] )
			numRepeats[3] <-- counter( b, n, b[index] )
}

3.

Algorithm: solvingQuadratic( a, b, c)
Input: Three floats, a, b and c corresponding to the coefficients in the following equation: 
		ax^2 + bx + c = 0
Output: the value of the roots of the expression. I.e. all possible solutions for x, printed to screen

function solvingQuadratic( a, b, c) {
	double determinant <-- b*b - 4*a*c

	if( a == 0 or determinant < 0) {
		throw new Error()
	} else {
		System.out.println((-1 * b + sqrt(determinant)) / (2 * a ) ) // print to screen bracketed item
		if( determinant !== 0 )
		System.out.print( ", " + ((-1 * b - sqrt(determinant)) / (2 * a)) ) // concantenates next value 
	}
}

Explanation of steps:
An eror must be thrown for all inputs not in bounds. This includes solutions with no real roots and 'fake' quadratic functions (when a = 0)
The first root can be immediately displayed. If there is only one real root (when the determinant is 0), the second identical root shouldn't be displayed. If two roots are indeed present, the second one can then be displayed.
	

4. 
[10 points] Suppose that you are given an array of integers. Write an algorithm (in pseudocode) which outputs the value occuring least frequently in the array, and the number of times it occurs. If there are ties, report the least frequent value which occurs first in the array. For example, if your input is the array:
1 4 4 3 4 3 5 2 10 1 your algorithm should output (5, 1).

Algorithm: leastFreqFinder( a, m )
Input: An array a with m elements
Output: Doubles displayed on screen corresponding to the least frequent member(s) in the array. The first element in the double is the least frequent value followed by the number of times it occurs in the array. 

function leastFreqFinder( a, m ) {
	int index <-- 1
	int[][] valuesnFrequency <-- new int[m][2]
	//a new 2D array of m elements (and two columns)

	for int i <-- 1 to m of array a {	
		valuesnFreuquency[i][1] <-- a[i]
		valuesnFrequency[i][2] <-- counter( a, m, a[i] )
	}

	int min <-- valuesnFreuquency[1][1]
	int value <-- valuesnFrequency[1][2]

	// Iterate over the first dimension
	for i <-- 2 to m of valuesnFrequency {
		// Strictly less than so an earlier element in the array will take precedence during a tie
		if( valuesnFrequency[i][1] < min  ) {
			min <-- valuesnFrequency[i][1]
			value <-- valuesnFrequency[i][2]
		}	
	}
	
	System.out.println( min + ", " + value ) // print to screen bracketed expression
}