//
//  MainTableViewController.m
//  Countries
//
//  Created by pradip on 1/29/15.
//  Copyright (c) 2015 pradip. All rights reserved.
//

#import "MainTableViewController.h"
#import "Country.h"
@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title=@"Countries";
    self.countryTableView.delegate=self;
    self.countryTableView.dataSource=self;
    
    Country *usa=[[Country alloc]init];
    usa.name=@"United State of America";
    usa.moto=@"usa Motto";
    usa.capital =@"washington DC";
    usa.flag=[UIImage imageNamed:@"usa.png"];
    
    Country *france=[[Country alloc]init];
    france.name=@"French Republic";
    france.moto=@"france Motto";
    france.capital =@"Paris";
    france.flag=[UIImage imageNamed:@"france.png"];
   
    Country *england=[[Country alloc]init];
    england.name=@"England";
    england.moto=@"England  Motto";
    england.capital =@"London";
    england.flag=[UIImage imageNamed:@"england.png"];
   
    Country *scotland=[[Country alloc]init];
    scotland.name=@"Scotland";
    scotland.moto=@"scotland Motto";
    scotland.capital =@"Edinburg";
    scotland.flag=[UIImage imageNamed:@"Scotland.png"];
    
    Country *spain=[[Country alloc]init];
    spain.name=@"Spain";
    spain.moto=@"Spain Motto";
    spain.capital =@"Madrid";
    spain.flag=[UIImage imageNamed:@"spain"];
    
    self.countries=[NSArray arrayWithObjects:usa,france,england,scotland,spain,nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.countries count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Cellidentifier=@"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Cellidentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Cellidentifier];
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.font=[UIFont systemFontOfSize:12];
        cell.detailTextLabel.font=[UIFont systemFontOfSize:12];
    }
    cell.textLabel.text=[NSString stringWithFormat:@"Cell %i",indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
