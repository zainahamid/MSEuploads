#import<Foundation/Foundation.h>
@interface phoneCard:NSObject
{
	NSString* name;
	NSString* email;
	int phoneNo;
}
@property (copy)NSString* name;
@property (copy)NSString* email;
@property int phoneNo;
-(void)print;
@end