#import<Foundation/Foundation.h>
#import "phoneBook.h"
#import "phoneCard.h"
@implementation phoneBook
@synthesize cards;
-(id)initWithName:(NSString*) name
{
	self=[super init];
	if(self)
	{
		bookName=[[NSString alloc]initWithString:name];
		cards=[[NSMutableArray alloc]init];
	}
	return self;
}
-(id)init
{
	return [self initWithName:@"NoName"];
}
-(void)delEntry:(NSString*) name
{
	phoneCard* temp=[self searchByName:name];
	[cards removeObject:temp];
	[temp release];
}
-(void)editEntry:(NSString*) name
{
	char str[256];
	int phone;
	char mail[256];
	phoneCard* temp=[self searchByName:name];
	NSLog(@"Enter new name");
	scanf("%s",str);
	 NSString *newName = [NSString stringWithUTF8String:str];
	 [temp setName:newName];
	 NSLog(@"Enter new phone number");
	scanf("%d",&phone);
	[temp setPhoneNo:phone];
	NSLog(@"Enter new email id");
	scanf("%s",mail);
	 NSString *newMail = [NSString stringWithUTF8String:mail];
	 [temp setEmail:newMail];
	
	
}
-(void)listDetails
{
	for(phoneCard* nextCard in cards)
	{
		[nextCard print];
	}
}
-(void)countEntries
{
	int count=0;
	for(phoneCard* nextCard in cards)
	{
		++count;
	}
	NSLog(@"The count is %d",count);
}
-(phoneCard*)searchByName:(NSString*) theName
{
	for(phoneCard* nextCard in cards)
	{
		if([nextCard.name caseInsensitiveCompare:theName]==NSOrderedSame)
			return nextCard;
	}
	return nil;
}
@end