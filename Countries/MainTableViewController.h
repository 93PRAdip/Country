//
//  MainTableViewController.h
//  Countries
//
//  Created by pradip on 1/29/15.
//  Copyright (c) 2015 pradip. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic) NSMutableArray *countries;
@property(strong,nonatomic)IBOutlet UITableView *countryTableView;


@end
