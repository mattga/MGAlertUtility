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

#import "MGAlertUtility.h"

@implementation MGAlertUtility

#pragma mark -
#pragma mark Error Alerts

+ (UIAlertController *)showErrorMessage:(NSError *)error
{
	return
	[MGAlertUtility showOKAlertWithMessage:error.localizedDescription title:@"ERROR"];
}

+ (UIAlertController *)showErrorMessage:(NSError *)error onView:(UIViewController *)view
{
	return [MGAlertUtility showOKAlertWithMessage:error.localizedDescription
											title:@"ERROR"
										   onView:view];
}

+ (UIAlertController *)showErrorMessage:(NSError *)error
								 onView:(UIViewController *)view
							   okAction:(MGAlertAction)action
{
	return [MGAlertUtility showOKAlertWithMessage:error.localizedDescription
											title:@"ERROR"
										   onView:view
										 okAction:action];
}

#pragma mark -
#pragma mark Ok Alerts

+ (UIAlertController *)showOkAlertWithMessage:(NSString *)message title:(NSString *)title
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleAlert];
	void (^handler)(UIAlertAction *) = ^(UIAlertAction *action) {
		[alert dismissViewControllerAnimated:YES completion:nil];
	};
	
	UIAlertAction *alertAction1 = [UIAlertAction actionWithTitle:@"OK"
														   style:UIAlertActionStyleDefault
														 handler:handler];
	
	[alert addAction:alertAction1];
	
	[[[UIApplication sharedApplication].keyWindow rootViewController]
	 presentViewController:alert
	 animated:YES
	 completion:nil];
	
	return alert;
}

+ (UIAlertController *)showOkAlertWithMessage:(NSString *)message
										title:(NSString *)title
									 okAction:(MGAlertAction)action
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleAlert];
	
	UIAlertAction *alertAction1 =
	[UIAlertAction actionWithTitle:@"OK"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *_action) {
							   if (action) {
								   action(alert, _action);
							   }
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	
	[alert addAction:alertAction1];
	
	[[[UIApplication sharedApplication].keyWindow rootViewController]
	 presentViewController:alert
	 animated:YES
	 completion:nil];
	
	return alert;
}

+ (UIAlertController *)showOkAlertWithMessage:(NSString *)message
										title:(NSString *)title
									   onView:(UIViewController *)view
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleAlert];
	void (^handler)(UIAlertAction *) = ^(UIAlertAction *action) {
		[alert dismissViewControllerAnimated:YES completion:nil];
	};
	
	UIAlertAction *alertAction1 = [UIAlertAction actionWithTitle:@"OK"
														   style:UIAlertActionStyleDefault
														 handler:handler];
	
	[alert addAction:alertAction1];
	
	[view presentViewController:alert animated:YES completion:nil];
	
	return alert;
}

+ (UIAlertController *)showOkAlertWithMessage:(NSString *)message
										title:(NSString *)title
									   onView:(UIViewController *)view
									 okAction:(MGAlertAction)action
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleAlert];
	
	UIAlertAction *alertAction1 =
	[UIAlertAction actionWithTitle:@"OK"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *_action) {
							   if (action) {
								   action(alert, _action);
							   }
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	
	[alert addAction:alertAction1];
	
	[view presentViewController:alert animated:YES completion:nil];
	
	return alert;
}

#pragma mark -
#pragma mark Yes/No Alerts

+ (UIAlertController *)showYesNoAlertWithMessage:(NSString *)message
										   title:(NSString *)title
									   yesAction:(MGAlertAction)action
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleAlert];
	
	UIAlertAction *alertAction1 =
	[UIAlertAction actionWithTitle:@"Yes"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *_action) {
							   if (action) {
								   action(alert, _action);
							   }
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	UIAlertAction *alertAction2 =
	[UIAlertAction actionWithTitle:@"No"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *action) {
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	
	[alert addAction:alertAction1];
	[alert addAction:alertAction2];
	
	[[[UIApplication sharedApplication].keyWindow rootViewController]
	 presentViewController:alert
	 animated:YES
	 completion:nil];
	
	return alert;
}

+ (UIAlertController *)showYesNoAlertWithMessage:(NSString *)message
										   title:(NSString *)title
										  onView:(UIViewController *)view
									   yesAction:(MGAlertAction)action
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleAlert];
	
	UIAlertAction *alertAction1 =
	[UIAlertAction actionWithTitle:@"Yes"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *_action) {
							   if (action) {
								   action(alert, _action);
							   }
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	UIAlertAction *alertAction2 =
	[UIAlertAction actionWithTitle:@"No"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *action) {
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	
	[alert addAction:alertAction1];
	[alert addAction:alertAction2];
	
	[view presentViewController:alert animated:YES completion:nil];
	
	return alert;
}

+ (UIAlertController *)showYesNoAlertWithMessage:(NSString *)message
										   title:(NSString *)title
										  onView:(UIViewController *)view
									   yesAction:(MGAlertAction)yesAction
										noAction:(MGAlertAction)noAction
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleAlert];
	
	UIAlertAction *alertAction1 =
	[UIAlertAction actionWithTitle:@"Yes"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *_action) {
							   if (yesAction) {
								   yesAction(alert, _action);
							   }
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	UIAlertAction *alertAction2 =
	[UIAlertAction actionWithTitle:@"No"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *_action) {
							   if (noAction) {
								   noAction(alert, _action);
							   }
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	
	[alert addAction:alertAction1];
	[alert addAction:alertAction2];
	
	[view presentViewController:alert animated:YES completion:nil];
	
	return alert;
}

#pragma mark -
#pragma mark Input Alerts

+ (UIAlertController *)showInputAlertWithMessage:(NSString *)message
										   title:(NSString *)title
									 textHandler:(void (^)(UITextField *))textHandler
										okAction:(MGAlertAction)action
{
	UIViewController *vc =
	[[UIApplication sharedApplication].keyWindow rootViewController];
	return [MGAlertUtility showInputAlertWithMessage:message
											   title:title
											  onView:vc
										 textHandler:textHandler
											okAction:action];
}

+ (UIAlertController *)showInputAlertWithMessage:(NSString *)message
										   title:(NSString *)title
										  onView:(UIViewController *)view
									 textHandler:(void (^)(UITextField *field))textHandler
										okAction:(MGAlertAction)action
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleAlert];
	[alert addTextFieldWithConfigurationHandler:textHandler];
	
	UIAlertAction *alertAction1 =
	[UIAlertAction actionWithTitle:@"OK"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *_action) {
							   if (action) {
								   action(alert, _action);
							   }
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	UIAlertAction *alertAction2 =
	[UIAlertAction actionWithTitle:@"Cancel"
							 style:UIAlertActionStyleDefault
						   handler:^(UIAlertAction *action) {
							   [alert dismissViewControllerAnimated:YES completion:nil];
						   }];
	
	[alert addAction:alertAction1];
	[alert addAction:alertAction2];
	
	[view presentViewController:alert animated:YES completion:nil];
	
	return alert;
}

#pragma mark -
#pragma mark Action Sheet Alerts

+ (UIAlertController *)showCancelActionSheet:(NSString *)title
									 message:(NSString *)message
									 actions:(NSDictionary *)actions
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleActionSheet];
	
	[actions enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
		UIAlertAction *action =
		[UIAlertAction actionWithTitle:key style:UIAlertActionStyleDefault handler:obj];
		[alert addAction:action];
	}];
	[alert addAction:[UIAlertAction actionWithTitle:@"Cancel"
											  style:UIAlertActionStyleCancel
											handler:^(UIAlertAction *action) {
												[alert dismissViewControllerAnimated:YES
																		  completion:nil];
											}]];
	
	[[[UIApplication sharedApplication].keyWindow rootViewController]
	 presentViewController:alert
	 animated:YES
	 completion:nil];
	
	return alert;
}

+ (UIAlertController *)showCancelActionSheet:(NSString *)title
									 message:(NSString *)message
									  onView:(UIViewController *)view
									 actions:(NSDictionary *)actions
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleActionSheet];
	
	[actions enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
		UIAlertAction *action =
		[UIAlertAction actionWithTitle:key style:UIAlertActionStyleDefault handler:obj];
		[alert addAction:action];
	}];
	[alert addAction:[UIAlertAction actionWithTitle:@"Cancel"
											  style:UIAlertActionStyleCancel
											handler:^(UIAlertAction *action) {
												[alert dismissViewControllerAnimated:YES
																		  completion:nil];
											}]];
	
	[view presentViewController:alert animated:YES completion:nil];
	
	return alert;
}

+ (UIAlertController *)showActionSheet:(NSString *)title
							   message:(NSString *)message
							   actions:(NSDictionary *)actions
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleActionSheet];
	
	[actions enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
		UIAlertAction *action =
		[UIAlertAction actionWithTitle:key style:UIAlertActionStyleDefault handler:obj];
		[alert addAction:action];
	}];
	
	[[[UIApplication sharedApplication].keyWindow rootViewController]
	 presentViewController:alert
	 animated:YES
	 completion:nil];
	
	return alert;
}

+ (UIAlertController *)showActionSheet:(NSString *)title
							   message:(NSString *)message
								onView:(UIViewController *)view
							   actions:(NSDictionary *)actions
{
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:title
										message:message
								 preferredStyle:UIAlertControllerStyleActionSheet];
	
	[actions enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
		UIAlertAction *action =
		[UIAlertAction actionWithTitle:key style:UIAlertActionStyleDefault handler:obj];
		[alert addAction:action];
	}];
	
	[view presentViewController:alert animated:YES completion:nil];
	
	return alert;
}

@end
