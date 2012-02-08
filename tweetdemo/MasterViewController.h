//
//  MasterViewController.h
//  tweetdemo
//
//  Created by Alistair Colling on 08/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMLController.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController{
    
    XMLController *xmlcont;
    
}

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) XMLController *xmlcont;

@end
