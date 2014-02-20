//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_classPrefix:identifier______VARIABLE_principalViewName:identifier___ViewController.h"

@implementation ___VARIABLE_classPrefix:identifier______VARIABLE_principalViewName:identifier___ViewController

- (void)setRepresentedObject:(id)representedObject
{
    NSParameterAssert([representedObject isKindOfClass:[SCNScene class]]);
    
    ((SCNView *)self.view).scene = representedObject;
    
    [super setRepresentedObject:representedObject];
}

- (id)representedObject
{
    id theRepresentedObject = [super representedObject];
    
    if (nil == theRepresentedObject)
    {
        return ((SCNView *)self.view).scene;
    }
    else
    {
        return theRepresentedObject;
    }
}

- (void)setView:(NSView *)view
{
    NSParameterAssert([view isKindOfClass:[SCNView class]]);
    
    [super setView:view];
}

@end
