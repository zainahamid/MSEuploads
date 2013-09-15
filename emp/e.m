#import<Foundation/Foundation.h>
#import "e.h"
@implementation e

@synthesize name;
@synthesize dept;
@synthesize eid;

/*
-(void)setName:(NSString*)nam
{
	name=nam;
}

-(void)setDept:(NSString*)dep
{
	dept=dep;
}
-(void)setEid:(int)ed
{
	eid=ed;
}
*/
-(void)print
{
NSLog(@"Name: %s",name);
NSLog(@"Department: %s",dept);
NSLog(@"EID: %d",eid);
}

@end