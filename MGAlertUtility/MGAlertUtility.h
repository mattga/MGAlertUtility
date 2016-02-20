//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 Matthew Gardner
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MGAlertUtility : NSObject

typedef void (^MGAlertAction)(UIAlertAction *action);

/*!
 * @discussion Show an error alert with one action to dismiss the alert.
 * @param error Error encountered.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showErrorMessage:(NSError *)error;

/*!
 * @discussion Show an error alert with one action to dismiss the alert.
 * @param error Error encountered.
 * @param view The view controller to present the alert on.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showErrorMessage:(NSError *)error onView:(UIViewController *)view;

/*!
 * @discussion Show an error alert with one action.
 * @param error Error encountered.
 * @param view The view controller to present the alert on.
 * @param action Code block to handle the alert action.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showErrorMessage:(NSError *)error
                                 onView:(UIViewController *)view
                               okAction:(MGAlertAction)action;

/*!
 * @discussion Show an alert with one action.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showOKAlertWithMessage:(NSString *)message title:(NSString *)title;

/*!
 * @discussion Show an alert with one action.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @param action Code block to handle the alert action.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showOKAlertWithMessage:(NSString *)message
                                        title:(NSString *)title
                                     okAction:(MGAlertAction)action;

/*!
 * @discussion Show an alert with one action to dismiss the alert.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @param view The view controller to present the alert on.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showOKAlertWithMessage:(NSString *)message
                                        title:(NSString *)title
                                       onView:(UIViewController *)view;

/*!
 * @discussion Show an alert with one action.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @param view The view controller to present the alert on.
 * @param action Code block to handle the alert action.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showOKAlertWithMessage:(NSString *)message
                                        title:(NSString *)title
                                       onView:(UIViewController *)view
                                     okAction:(MGAlertAction)action;

/*!
 * @discussion Show an alert with a YES and NO action.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @param yesAction Code block to handle the alert's YES action.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showYesNoAlertWithMessage:(NSString *)message
                                           title:(NSString *)title
                                       yesAction:(MGAlertAction)action;

/*!
 * @discussion Show an alert with a YES and NO action.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @param view The view controller to present the alert on.
 * @param yesAction Code block to handle the alert's YES action.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showYesNoAlertWithMessage:(NSString *)message
                                           title:(NSString *)title
                                          onView:(UIViewController *)view
                                       yesAction:(MGAlertAction)action;

/*!
 * @discussion Show an alert with a YES and NO action.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @param view The view controller to present the alert on.
 * @param yesAction Code block to handle the alert's YES action.
 * @param noAction Code block to handle the alert's NO action.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showYesNoAlertWithMessage:(NSString *)message
                                           title:(NSString *)title
                                          onView:(UIViewController *)view
                                       yesAction:(MGAlertAction)yesAction
                                        noAction:(MGAlertAction)noAction;

/*!
 * @discussion Show an alert with a text input and ok action.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @param textHandler Code block to handle textfield configuration.
 * @param action Code block to handle the alert action.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showInputAlertWithMessage:(NSString *)message
										   title:(NSString *)title
									 textHandler:(void (^)(UITextField *field))textHandler
										okAction:(MGAlertAction)action;

/*!
 * @discussion Show an alert with a text input and ok action.
 * @param message The message to display.
 * @param title The title to give the alert.
 * @param view The view controller to present the alert on.
 * @param textHandler Code block to handle textfield configuration.
 * @param action Code block to handle the alert action.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showInputAlertWithMessage:(NSString *)message
										   title:(NSString *)title
										  onView:(UIViewController *)view
									 textHandler:(void (^)(UITextField *field))textHandler
										okAction:(MGAlertAction)action;

/*!
 * @discussion Show an action sheet with the provided actions and a cancel action.
 * @param title The title to give the alert.
 * @param message The message to display.
 * @param view The view controller to present the alert on.
 * @param actions Dictionary of the action titles and handlers. Expects a
 NSString as the key, and MGAlertAction as the handler.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showCancelActionSheet:(NSString *)title
									 message:(NSString *)message
									 actions:(NSDictionary *)actions;

/*!
 * @discussion Show an action sheet with the provided actions and a cancel action.
 * @param title The title to give the alert.
 * @param message The message to display.
 * @param view The view controller to present the alert on.
 * @param view The view controller to present the alert on.
 * @param actions Dictionary of the action titles and handlers. Expects a
 NSString as the key, and MGAlertAction as the handler.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showCancelActionSheet:(NSString *)title
									 message:(NSString *)message
									  onView:(UIViewController *)view
									 actions:(NSDictionary *)actions;

/*!
 * @discussion Show an action sheet with the provided actions.
 * @param title The title to give the alert.
 * @param message The message to display.
 * @param actions Dictionary of the action titles and handlers. Expects a
 NSString as the key, and MGAlertAction as the handler.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showActionSheet:(NSString *)title
							   message:(NSString *)message
							   actions:(NSDictionary *)actions;

/*!
 * @discussion Show an action sheet with the provided actions.
 * @param title The title to give the alert.
 * @param message The message to display.
 * @param view The view controller to present the alert on.
 * @param actions Dictionary of the action titles and handlers. Expects a 
 NSString as the key, and MGAlertAction as the handler.
 * @return The UIAlertController presented.
 */
+ (UIAlertController *)showActionSheet:(NSString *)title
							   message:(NSString *)message
								onView:(UIViewController *)view
							   actions:(NSDictionary *)actions;

@end
