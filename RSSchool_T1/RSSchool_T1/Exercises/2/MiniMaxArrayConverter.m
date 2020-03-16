#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    int min = -1;
    int max = 0;
    
    for (int i=0; i < array.count; i++) {
        
        int sum = 0;
        
        for (int j=0; j < array.count; j++) {
            if (i == j)
                continue;
            
            sum = sum + [[array objectAtIndex: j] intValue];
//            localMax = localMax + [[array objectAtIndex: j] intValue];
            
        }
        
        if (sum < min || min == -1) {
            min = sum;
        }
        
        if (sum > max) {
            max = sum;
        }
    }
    
    NSMutableArray<NSNumber*>* result = [[NSMutableArray<NSNumber*> alloc] init];
    [result addObject: [NSNumber numberWithInt:min]];
    [result addObject: [NSNumber numberWithInt:max]];
    
    return result;
}

@end
