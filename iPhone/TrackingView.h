//
//  TrackingView.h
//  MVPEvents
//
//  Created by Albert Pascual on 1/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TrackingManager.h"

@interface TrackingView : UIViewController

@property (nonatomic, retain) TrackingManager *trackingManager;
@property (nonatomic, retain) IBOutlet UISwitch *mySwitch;

@end
