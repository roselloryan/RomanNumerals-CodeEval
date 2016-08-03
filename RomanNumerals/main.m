

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *line = @"439";
        
        NSMutableString *solutionString = [[[NSString alloc]init] mutableCopy];
        
        NSInteger i = 0;
        for (i = 0; i < line.length; i++) {
            
            NSUInteger tempNum = [[NSString stringWithFormat:@"%c", [line characterAtIndex:line.length - 1 - i]] integerValue];
            
            NSLog(@"tempNum: %lu", tempNum);
            
            if (tempNum == 4) {
                if (i == 0) {
                    // 4
                    [solutionString appendString:@"IV"];
                }
                else if (i == 1) {
                    // 40
                    [solutionString insertString:@"XL" atIndex: 0];
                }
                else if (i == 2) {
                    // 400
                    [solutionString insertString:@"CD" atIndex: 0];
                }
            }
            else if (tempNum == 9) {
                if (i == 0) {
                    // 9
                    [solutionString appendString:@"IX"];
                }
                else if (i == 1) {
                    // 90
                    [solutionString insertString:@"XC" atIndex: 0];
                }
                else if (i == 2) {
                    // 900
                    [solutionString insertString:@"CM" atIndex: 0];
                }
            }
            else {
                if (i == 0) {
                    NSMutableString *digitString = [[[NSString alloc]init] mutableCopy];
                    while (tempNum > 0) {
                        
                        if (tempNum >= 5) {
                            [digitString appendString:@"V"];
                            tempNum -= 5;
                        }
                        else {
                            [digitString appendString:@"I"];
                            tempNum -= 1;
                        }
                    }
                    [solutionString insertString:digitString atIndex: 0];
                }
                else if (i == 1) {
                    NSMutableString *digitString = [[[NSString alloc]init] mutableCopy];
                    while (tempNum > 0) {
                        if (tempNum >= 5) {
                            [digitString appendString:@"L"];
                            tempNum -= 5;
                        }
                        else {
                            [digitString appendString:@"X"];
                            tempNum -= 1;
                        }
                    }
                    [solutionString insertString:digitString atIndex: 0];
                }
                else if (i == 2) {
                    NSMutableString *digitString = [[[NSString alloc]init] mutableCopy];
                    while (tempNum > 0) {
                        if (tempNum >= 5) {
                            [digitString appendString:@"D"];
                            tempNum -= 5;
                        }
                        else {
                            [digitString appendString:@"C"];
                            tempNum -= 1;
                        }
                    }
                    [solutionString insertString:digitString atIndex: 0];
                }
                else {
                    NSMutableString *digitString = [[[NSString alloc]init] mutableCopy];
                    while (tempNum > 0) {
                        [digitString appendString:@"M"];
                        tempNum -= 1;
                    }
                    [solutionString insertString:digitString atIndex: 0];
                }
            }
        }
        
        NSLog(@"%@", solutionString);

            
    }
    return 0;
}
