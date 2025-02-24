The corrected code utilizes proper memory management to avoid the memory leak. Using ARC is highly recommended to prevent such issues:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) NSString *myString; // Use strong under ARC
@end

@implementation MyClass
// dealloc is not needed in ARC
@end

int main() {
    MyClass *obj = [[MyClass alloc] init];
    obj.myString = [NSString stringWithString:@"Hello"]; // Use ARC's convenience method for string creation
    // No need to manually release in ARC; ARC handles memory management automatically.
    [obj release]; // No longer necessary in ARC
    return 0;
}
```

**Note:**  The provided solution using manual memory management is for demonstration purposes and is not recommended in modern Objective-C development.  Always prefer ARC for easier and safer memory management.