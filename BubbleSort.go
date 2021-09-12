package main

import (
	"fmt"
	"math/rand"
	"time"
)

func bubblesort(a []int) {
	for itemCount := len(a) - 1; ; itemCount-- {
		hasChanged := false
		for index := 0; index < itemCount; index++ {
			if a[index] > a[index+1] {
				a[index], a[index+1] = a[index+1], a[index]
				hasChanged = true
			}
		}
		if hasChanged == false {
			break
		}
	}
}

func main() {
	rand.Seed(time.Now().Unix())
	list := rand.Perm(10)
	fmt.Println("Unsorted array:", list)

	bubblesort(list)
	fmt.Println("Sorted array:", list)
}
