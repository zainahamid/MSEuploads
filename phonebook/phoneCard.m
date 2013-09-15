#import<Foundation/Foundation.h>
#import "phoneCard.h"
@implementation phoneCard
@synthesize name,email,phoneNo;
-(void)print
{
	NSLog(@"The name is %@",name);
	NSLog(@"The email id is %@",email);
	NSLog(@"The phone num is %d",phoneNo);
}
@end