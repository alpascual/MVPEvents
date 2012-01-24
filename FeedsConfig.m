//
//  FeedConfig.m
//  MVPEvents
//
//  Created by Albert Pascual on 1/20/11.
//  Copyright 2011 Al. All rights reserved.
//

#import "FeedsConfig.h"


@implementation FeedsConfig

- (NSMutableArray*) GetAllFeeds
{
	NSMutableArray *feedList = [[[NSMutableArray alloc] init] autorelease];
	
	[feedList addObject:@"http://mvpsummitevents.info/rss.ashx"];
	//[feedList addObject:@"feed:https://twitter.com/statuses/user_timeline/14820993.rss"];
	
	
	return feedList;
	
}

- (NSString *) GetTitle
{
	return @"MVP Events";
}

- (NSString *) GetEmail
{
	return @"alpascual@gmail.com";
}

@end
