//
//  AppDelegate.h
//  Countries
//
//  Created by pradip on 1/29/15.
//  Copyright (c) 2015 pradip. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainTableViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic)UINavigationController *navobject;
@property(strong,nonatomic)MainTableViewController *objTableView;

@end
