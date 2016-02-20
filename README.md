# MGAlertUtility

[![Pod Version](https://img.shields.io/cocoapods/v/MGAlertUtility.svg?style=flat-square)](https://cocoapods.org/pods/MGAlertUtility)
[![License](https://img.shields.io/badge/license-MIT-red.svg?style=flat-square)](https://opensource.org/licenses/MIT)

A simple utility class with static methods for presenting a UIAlertController.

### Examples

![OK Alert](Screenshots/ok.png)
```objc
[MGAlertUtility showOKAlertWithMessage:@"Check the provided email for further instructions."
                                 title:@"Account created"
                              okAction:^(UIAlertAction *action) {
                                NSLog(@"User pressed %@", action.title);
                              }];
```

![YesNo Alert](Screenshots/yesno.png)
```objc
[MGAlertUtility showYesNoAlertWithMessage:@"What is this"
                                    title:@"idk"
                                   onView:self
                                 okAction:^(UIAlertAction *action) {
                                   NSLog(@"some action '%@'", action.title);
                                 }];
```

![Action Sheet Alert](Screenshots/actionsheet.png)
```objc
[MGAlertUtility showCancelActionSheet:@"Hello"
                              message:@"How are you?"
                              actions:@{
	                              @"Action 1" : ^(UIAlertAction *action) {
										NSLog(@"First Action: %@", action.title);
								  }, 
								  @"Action 2" : ^(UIAlertAction *action) {
	  									NSLog(@"Second Action: %@", action.title);
								  }
							  }];
```

