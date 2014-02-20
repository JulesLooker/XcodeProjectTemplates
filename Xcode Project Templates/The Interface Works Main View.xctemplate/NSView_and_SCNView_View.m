//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_classPrefix:identifier______VARIABLE_principalViewName:identifier___View.h"

@implementation ___VARIABLE_classPrefix:identifier______VARIABLE_principalViewName:identifier___View

- (void)setViewController:(NSViewController *)newController
{
    if (_viewController)
    {
        NSResponder *controllerNextResponder = [_viewController nextResponder];
        [super setNextResponder:controllerNextResponder];
        [_viewController setNextResponder:nil];
    }
    
    _viewController = newController;
    
    if (newController)
    {
        NSResponder *ownNextResponder = [self nextResponder];
        [super setNextResponder: _viewController];
        [_viewController setNextResponder:ownNextResponder];
    }
}

- (void)setNextResponder:(NSResponder *)newNextResponder
{
    if (_viewController)
    {
        [_viewController setNextResponder:newNextResponder];
        return;
    }
    
    [super setNextResponder:newNextResponder];
}

@end
