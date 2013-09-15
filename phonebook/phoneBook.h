#import<Foundation/Foundation.h>
#import "phoneCard.h"
@interface phoneBook:NSObject
{
	NSMutableArray *cards;
	NSString* bookName;
}
@property (copy)NSMutableArray* cards;
-(void)delEntry:(NSString*) name;
-(void)editEntry:(NSString*) name;
-(void)listDetails;
-(void)countEntries;
-(phoneCard* )searchByName:(NSString*) theName;
@end