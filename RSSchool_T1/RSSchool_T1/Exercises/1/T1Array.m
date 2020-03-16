#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    
    if (sadArray.count == 0)
        return sadArray;
    
    Boolean check = true;
    NSMutableArray *happyArray = [[NSMutableArray alloc] init];
    while (check) {
        
        check = false;
        
        [happyArray addObject:[sadArray objectAtIndex: 0]];
        for (int i=1; i<sadArray.count-1; i++) {
            
            int a = [[sadArray objectAtIndex: i-1] intValue];
            int b = [[sadArray objectAtIndex: i+1] intValue];
            if ((a + b) < [[sadArray objectAtIndex: i] intValue]){
                check = true;
            } else {
                [happyArray addObject:[sadArray objectAtIndex: i]];
            }
        }
        
        [happyArray addObject:[sadArray objectAtIndex: sadArray.count-1]];
        if (check) {
            sadArray = happyArray;
            happyArray = [[NSMutableArray alloc] init];
        }
    }
    
    return happyArray;
}

@end
