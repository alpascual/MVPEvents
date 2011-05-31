//
//  FeedConfig.h
//  MVPEvents
//
//  Created by Albert Pascual on 1/20/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FeedsConfig : NSObject {

}

- (NSMutableArray*) GetAllFeeds;
- (NSString *) GetTitle;
- (NSString *) GetEmail;

@end
