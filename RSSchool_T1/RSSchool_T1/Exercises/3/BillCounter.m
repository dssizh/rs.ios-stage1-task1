#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    int total = 0;
    for (int i=0; i < bill.count; i++) {
        if (i == index)
            continue;
        total = total + [[bill objectAtIndex:i] intValue];
    }
    
    int result = [sum intValue] - total/2;
    
    if (result == 0) {
        return @"Bon Appetit";
    } else {
        return [[NSNumber numberWithInt:result] stringValue];
    }
}

@end
