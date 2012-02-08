//
//  XMLController.m
//  tweetdemo
//
//  Created by Alistair Colling on 08/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XMLController.h"
#import "Tweet.h"

@implementation XMLController
@synthesize tweets;
-(id)loadXMLByURL:(NSString *)urlString
{
    tweets = [[NSMutableArray alloc] init];
    NSURL *url = [NSURL URLWithString:urlString];
    parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    parser.delegate = self;
    [parser parse];
    return self;
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if ([elementName isEqualToString:@"status"]){
        //initialise the objects to store the data
        currentTweet = [Tweet alloc];
        currentNodeContent = [[NSMutableArray alloc] init];
    }
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    //store the current node content and then release the variables after each time
    if([elementName isEqualToString:@"text"]){
        currentTweet.content = currentNodeContent;   
    }
    if([elementName isEqualToString:@"created_at"]){
        currentTweet.createdAt = currentNodeContent;
    }
    if([elementName isEqualToString:@"status"]){    
        [tweets addObject:currentTweet];
        [currentTweet release];
        currentTweet = nil;
        [currentNodeContent release];
        
        
    }
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    
    currentNodeContent = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
}
@end
