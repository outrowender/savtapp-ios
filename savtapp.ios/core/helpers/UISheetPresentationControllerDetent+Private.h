//
//  UISheetPresentationControllerDetent.h
//  savtapp.ios
//
//  Created by Wender Patrick on 01/03/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISheetPresentationControllerDetent (Private)
+ (UISheetPresentationControllerDetent *)_detentWithIdentifier:(NSString *)identifier constant:(CGFloat)constant;
@end

NS_ASSUME_NONNULL_END
