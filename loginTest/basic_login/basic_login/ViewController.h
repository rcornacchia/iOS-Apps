//
//  ViewController.h
//  simple_login
//
//  Created by Rob Cornacchia on 7/6/15.
//  Copyright (c) 2015 Blackbird. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ServiceConnector.h"


@interface ViewController : UIViewController <ServiceConnectorDelegate>

- (IBAction)emailSignIn:(id)sender;

@end

