package main

import "testing"

func TestExample(t *testing.T) {
    if 2+2 != 4 {
        t.Error("Math is broken!")
    }
}
