//
//  Tweet.h
//  tweetdemo
//
//  Created by Alistair Colling on 08/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject{
    
    NSString *content;
    NSString *createdAt;       
}
@property (nonatomic ,retain) NSString *content;
@property (nonatomic ,retain) NSString *createdAt;

@end
