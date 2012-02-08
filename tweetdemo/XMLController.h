//
//  XMLController.h
//  tweetdemo
//
//  Created by Alistair Colling on 08/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Tweet;

@interface XMLController : NSObject{
    
    
    NSMutableString *currentNodeContent;
    NSMutableArray *tweets;
    NSXMLParser *parser;
    Tweet *currentTweet;
    
}

@property (readonly, retain) NSMutableArray *tweets;

-(id) loadXMLByURL:(NSString *)urlString;

@end
