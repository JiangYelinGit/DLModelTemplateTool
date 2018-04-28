//
//  ViewController.m
//  DLModelTemplateTool
//
//  Created by Aaron on 2018/4/28.
//  Copyright © 2018年 Aaron. All rights reserved.
//

#import "ViewController.h"
#import "MGTemplateEngine.h"
#import "ICUTemplateMatcher.h"

@interface ViewController ()
{
    
}

/**
 Model 类名
 */
@property (weak) IBOutlet NSTextField *classNameTextFiled;

//属性名、属性类名
@property (weak) IBOutlet NSTextField *propertyNameTextField1;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton1;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField1;

@property (weak) IBOutlet NSTextField *propertyNameTextField2;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton2;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField2;

@property (weak) IBOutlet NSTextField *propertyNameTextField3;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton3;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField3;

@property (weak) IBOutlet NSTextField *propertyNameTextField4;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton4;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField4;

@property (weak) IBOutlet NSTextField *propertyNameTextField5;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton5;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField5;

@property (weak) IBOutlet NSTextField *propertyNameTextField6;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton6;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField6;

@property (weak) IBOutlet NSTextField *propertyNameTextField7;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton7;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField7;

@property (weak) IBOutlet NSTextField *propertyNameTextField8;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton8;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField8;

@property (weak) IBOutlet NSTextField *propertyNameTextField9;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton9;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField9;

@property (weak) IBOutlet NSTextField *propertyNameTextField10;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton10;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField10;

@property (weak) IBOutlet NSTextField *propertyNameTextField11;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton11;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField11;

@property (weak) IBOutlet NSTextField *propertyNameTextField12;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton12;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField12;

@property (weak) IBOutlet NSTextField *propertyNameTextField13;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton13;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField13;

@property (weak) IBOutlet NSTextField *propertyNameTextField14;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton14;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField14;

@property (weak) IBOutlet NSTextField *propertyNameTextField15;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton15;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField15;

@property (weak) IBOutlet NSTextField *propertyNameTextField16;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton16;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField16;

@property (weak) IBOutlet NSTextField *propertyNameTextField17;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton17;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField17;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)generateCodeTapped:(id)sender {
    // Set up template engine with your chosen matcher.
    MGTemplateEngine *engine = [MGTemplateEngine templateEngine];
    //    [engine setDelegate:self];
    [engine setMatcher:[ICUTemplateMatcher matcherWithTemplateEngine:engine]];
    
    NSString *templatePath_h = [[NSBundle mainBundle] pathForResource:@"ModelTemplater_h" ofType:@"txt"];
    NSString *templatePath_m = [[NSBundle mainBundle] pathForResource:@"ModelTemplater_m" ofType:@"txt"];
    
    NSMutableArray *mArr = [NSMutableArray new];
    
    if (![self.propertyNameTextField1.stringValue isEqualToString:@""]) {
        NSDictionary *dic = @{@"propertyName":self.propertyNameTextField1.stringValue,
                              @"propertyType":[self.propertyTypePopUpButton1 titleOfSelectedItem],
                              @"propertyClassName":self.propertyClassNameTextField1.stringValue,
                              };
        [mArr addObject:dic];
    }
    
    if (![self.propertyNameTextField2.stringValue isEqualToString:@""]) {
        NSDictionary *dic = @{@"propertyName":self.propertyNameTextField2.stringValue,
                              @"propertyType":[self.propertyTypePopUpButton2 titleOfSelectedItem],
                              @"propertyClassName":self.propertyClassNameTextField2.stringValue,
                              };
        [mArr addObject:dic];
    }

    NSDictionary *variables = @{@"ClassName":self.classNameTextFiled.stringValue,
                                @"Params":mArr,
                                };
    
    NSString *resultH = [engine processTemplateInFileAtPath:templatePath_h withVariables:variables];
    NSString *resultM = [engine processTemplateInFileAtPath:templatePath_m withVariables:variables];
    
    NSString *bundel=[[NSBundle mainBundle] resourcePath];
    NSString *deskTopLocation=[[bundel substringToIndex:[bundel rangeOfString:@"Library"].location] stringByAppendingFormat:@"Desktop"];
    NSString *pathH = [deskTopLocation stringByAppendingPathComponent:[NSString stringWithFormat:@"%@Model.h", self.classNameTextFiled.stringValue]];
    NSString *pathM = [deskTopLocation stringByAppendingPathComponent:[NSString stringWithFormat:@"%@Model.m", self.classNameTextFiled.stringValue]];
    
    NSError *error;
    
    BOOL isSuccessH = [resultH writeToFile:pathH atomically:YES encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"%@",error);
    BOOL isSuccessM = [resultM writeToFile:pathM atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    if (isSuccessH && isSuccessM) {
        NSLog(@"success");
    } else {
        NSLog(@"fail");
    }

}

@end
