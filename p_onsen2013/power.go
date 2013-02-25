package main

import (
	"fmt"
	"math"
)

func multi(x, y int) int {
	ml := 0
	for x > 1 {
		if x % 2 == 0 {
			y <<= 1
			x >>= 1
		} else {
			ml += y
			x -= 1
		}
	}
	y += ml
	return y
}

func power(x, n int) int {
	if n == 0 { return 1 }
	if n % 2 == 0 {
		return power(multi(x, x), n / 2)
	} else {
		return multi(x, power(x, n - 1))
	}
	return 0
}

func assertEquals(expected float64, actual int) {
	if int(expected) == actual {
		fmt.Print("OK: ")
	} else {
		fmt.Print("NG: ")
	}
	fmt.Printf("expected: %d, actual: %d\n", expected, actual)
}

func main() {
	assertEquals(math.Pow(5, 5), power(5, 5))
	assertEquals(math.Pow(10, 10), power(10, 10))
	assertEquals(math.Pow(2, 1), power(2, 1))
	assertEquals(math.Pow(2, 0), power(2, 0))
}