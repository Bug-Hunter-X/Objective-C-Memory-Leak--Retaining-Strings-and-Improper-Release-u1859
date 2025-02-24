# Objective-C Memory Leak: Retaining Strings and Improper Release

This repository demonstrates a common memory leak in Objective-C related to improper memory management when dealing with retained properties.  The `bug.m` file showcases the problematic code, while `bugSolution.m` provides the corrected version.

**Problem:**
The original code retains a string within a class but fails to release it properly before releasing the class instance itself, leading to a memory leak.

**Solution:**
The solution involves correctly managing the reference count of the string property by releasing it before releasing the class instance.  Modern Objective-C development usually utilizes Automatic Reference Counting (ARC), which significantly reduces these types of errors.  This example demonstrates the manual memory management approach and its potential pitfalls.