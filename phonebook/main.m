#import<Foundation/Foundation.h>
#import "phoneCard.h"
#import "phoneBook.h"
int main(int argc,char* argv[])
{

NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
NSMutableArray *pc = [[NSMutableArray alloc]init];
	phoneBook* pb=[[phoneBook alloc]init];
	phoneCard* pc1=[[phoneCard alloc]init];
	phoneCard* pc2=[[phoneCard alloc]init];
	phoneCard* pc3=[[phoneCard alloc]init];
	char newName[256];
	char newMail[256];
	int phone;
	NSLog(@"Enter name");
		scanf("%s",newName);
		NSLog(@"Enter email");
		scanf("%s",newMail);
		NSLog(@"Enter phone number");
		scanf("%d",&phone);
		NSString *type = [NSString stringWithUTF8String:newName];
		[pc1 setName:type];
		type = [NSString stringWithUTF8String:newMail];
		[pc1 setPhoneNo:phone];
		[pc1 setEmail:type];
		NSLog(@"Enter name");
		scanf("%s",newName);
		NSLog(@"Enter email");
		scanf("%s",newMail);
		NSLog(@"Enter phone number");
		scanf("%d",&phone);
		type = [NSString stringWithUTF8String:newName];
		[pc2 setName:type];
		type = [NSString stringWithUTF8String:newMail];
		[pc2 setPhoneNo:phone];
		[pc2 setEmail:type];
		NSLog(@"Enter name");
		scanf("%s",newName);
		NSLog(@"Enter email");
		scanf("%s",newMail);
		NSLog(@"Enter phone number");
		scanf("%d",&phone);
		
		type = [NSString stringWithUTF8String:newName];
		[pc3 setName:type];
		type = [NSString stringWithUTF8String:newMail];
		[pc3 setPhoneNo:phone];
		[pc3 setEmail:type];
		[pc addObject:pc1];
		[pc addObject:pc2];
		[pc addObject:pc3];
[pb setCards:pc];
[pb listDetails];
[pb countEntries];
	[pool drain];
	return 0;
}