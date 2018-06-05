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
@property (weak) IBOutlet NSTextField *propertyDesTextField1;

@property (weak) IBOutlet NSTextField *propertyNameTextField2;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton2;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField2;
@property (weak) IBOutlet NSTextField *propertyDesTextField2;

@property (weak) IBOutlet NSTextField *propertyNameTextField3;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton3;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField3;
@property (weak) IBOutlet NSTextField *propertyDesTextField3;

@property (weak) IBOutlet NSTextField *propertyNameTextField4;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton4;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField4;
@property (weak) IBOutlet NSTextField *propertyDesTextField4;

@property (weak) IBOutlet NSTextField *propertyNameTextField5;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton5;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField5;
@property (weak) IBOutlet NSTextField *propertyDesTextField5;

@property (weak) IBOutlet NSTextField *propertyNameTextField6;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton6;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField6;
@property (weak) IBOutlet NSTextField *propertyDesTextField6;

@property (weak) IBOutlet NSTextField *propertyNameTextField7;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton7;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField7;
@property (weak) IBOutlet NSTextField *propertyDesTextField7;

@property (weak) IBOutlet NSTextField *propertyNameTextField8;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton8;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField8;
@property (weak) IBOutlet NSTextField *propertyDesTextField8;

@property (weak) IBOutlet NSTextField *propertyNameTextField9;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton9;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField9;
@property (weak) IBOutlet NSTextField *propertyDesTextField9;

@property (weak) IBOutlet NSTextField *propertyNameTextField10;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton10;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField10;
@property (weak) IBOutlet NSTextField *propertyDesTextField10;

@property (weak) IBOutlet NSTextField *propertyNameTextField11;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton11;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField11;
@property (weak) IBOutlet NSTextField *propertyDesTextField11;

@property (weak) IBOutlet NSTextField *propertyNameTextField12;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton12;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField12;
@property (weak) IBOutlet NSTextField *propertyDesTextField12;

@property (weak) IBOutlet NSTextField *propertyNameTextField13;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton13;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField13;
@property (weak) IBOutlet NSTextField *propertyDesTextField13;

@property (weak) IBOutlet NSTextField *propertyNameTextField14;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton14;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField14;
@property (weak) IBOutlet NSTextField *propertyDesTextField14;

@property (weak) IBOutlet NSTextField *propertyNameTextField15;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton15;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField15;
@property (weak) IBOutlet NSTextField *propertyDesTextField15;

@property (weak) IBOutlet NSTextField *propertyNameTextField16;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton16;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField16;
@property (weak) IBOutlet NSTextField *propertyDesTextField16;

@property (weak) IBOutlet NSTextField *propertyNameTextField17;
@property (weak) IBOutlet NSPopUpButton *propertyTypePopUpButton17;
@property (weak) IBOutlet NSTextField *propertyClassNameTextField17;
@property (weak) IBOutlet NSTextField *propertyDesTextField17;



@property(nonatomic,strong)NSArray *propertyNameTextFields;
@property(nonatomic,strong)NSArray *propertyTypePopUpButtons;
@property(nonatomic,strong)NSArray *propertyClassNameTextFields;
@property(nonatomic,strong)NSArray *propertyDesTextFields;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.propertyNameTextFields = @[self.propertyNameTextField1,
                                    self.propertyNameTextField2,
                                    self.propertyNameTextField3,
                                    self.propertyNameTextField4,
                                    self.propertyNameTextField5,
                                    self.propertyNameTextField6,
                                    self.propertyNameTextField7,
                                    self.propertyNameTextField8,
                                    self.propertyNameTextField9,
                                    self.propertyNameTextField10,
                                    self.propertyNameTextField11,
                                    self.propertyNameTextField12,
                                    self.propertyNameTextField13,
                                    self.propertyNameTextField14,
                                    self.propertyNameTextField15,
                                    self.propertyNameTextField16,
                                    self.propertyNameTextField17];
    
    self.propertyTypePopUpButtons = @[self.propertyTypePopUpButton1,
                                      self.propertyTypePopUpButton2,
                                      self.propertyTypePopUpButton3,
                                      self.propertyTypePopUpButton4,
                                      self.propertyTypePopUpButton5,
                                      self.propertyTypePopUpButton6,
                                      self.propertyTypePopUpButton7,
                                      self.propertyTypePopUpButton8,
                                      self.propertyTypePopUpButton9,
                                      self.propertyTypePopUpButton10,
                                      self.propertyTypePopUpButton11,
                                      self.propertyTypePopUpButton12,
                                      self.propertyTypePopUpButton13,
                                      self.propertyTypePopUpButton14,
                                      self.propertyTypePopUpButton15,
                                      self.propertyTypePopUpButton16,
                                      self.propertyTypePopUpButton17];
    
    self.propertyClassNameTextFields = @[self.propertyClassNameTextField1,
                                         self.propertyClassNameTextField2,
                                         self.propertyClassNameTextField3,
                                         self.propertyClassNameTextField4,
                                         self.propertyClassNameTextField5,
                                         self.propertyClassNameTextField6,
                                         self.propertyClassNameTextField7,
                                         self.propertyClassNameTextField8,
                                         self.propertyClassNameTextField9,
                                         self.propertyClassNameTextField10,
                                         self.propertyClassNameTextField11,
                                         self.propertyClassNameTextField12,
                                         self.propertyClassNameTextField13,
                                         self.propertyClassNameTextField14,
                                         self.propertyClassNameTextField15,
                                         self.propertyClassNameTextField16,
                                         self.propertyClassNameTextField17];
    
    
    self.propertyDesTextFields = @[self.propertyDesTextField1,
                                   self.propertyDesTextField2,
                                   self.propertyDesTextField3,
                                   self.propertyDesTextField4,
                                   self.propertyDesTextField5,
                                   self.propertyDesTextField6,
                                   self.propertyDesTextField7,
                                   self.propertyDesTextField8,
                                   self.propertyDesTextField9,
                                   self.propertyDesTextField10,
                                   self.propertyDesTextField11,
                                   self.propertyDesTextField12,
                                   self.propertyDesTextField13,
                                   self.propertyDesTextField14,
                                   self.propertyDesTextField15,
                                   self.propertyDesTextField16,
                                   self.propertyDesTextField17];
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
    
    for (int i = 0; i < 17; i++) {
        NSTextField *properyNameTextField = self.propertyNameTextFields[i];
        NSPopUpButton *propertyTypePopUpButton = self.propertyTypePopUpButtons[i];
        NSTextField *propertyClassNameTextField = self.propertyClassNameTextFields[i];
        NSTextField *propertyDesTextField = self.propertyDesTextFields[i];
        
        NSString *propertyNameStr = properyNameTextField.stringValue;
        NSString *propertyTypeStr = [propertyTypePopUpButton titleOfSelectedItem];
        NSString *propertyClassNameStr = propertyClassNameTextField.stringValue;
        NSString *propertyDesStr = propertyDesTextField.stringValue;
        
        
        if ([propertyTypeStr isEqualToString:@"NSString"]) {
            if (![propertyNameStr isEqualToString:@""]&&
                ![propertyDesStr isEqualToString:@""]) {
                
                
                if ([propertyNameStr isEqualToString:@"id"]) {
                    propertyNameStr = @"ID";
                }
                
                if ([propertyDesStr isEqualToString:@"id"]) {
                    propertyDesStr = @"ID";
                }

                
                NSDictionary *dic = @{@"propertyDes":propertyDesStr,//描述
                                      @"propertyKeyword":@"copy",//关键字
                                      @"propertyClassName":@"NSString",//类名
                                      @"propertyName":propertyNameStr,//属性名
                                      @"propertyType":propertyTypeStr,//属性类别
                                      @"compareStr":@"ID",//比较
                                      };
                [mArr addObject:dic];
            }
        }
        
        if ([propertyTypeStr isEqualToString:@"NSArray"]) {
            if (![propertyNameStr isEqualToString:@""]&&
                ![propertyDesStr isEqualToString:@""]&&
                ![propertyClassNameStr isEqualToString:@""]) {
                
                NSDictionary *dic = @{@"propertyDes":propertyDesStr,//描述
                                      @"propertyKeyword":@"strong",//关键字
                                      @"propertyClassName":@"NSArray",//类名
                                      @"propertyName":propertyNameStr,//属性名
                            
                                      @"propertyType":propertyTypeStr,//属性类别
                                      @"compareStr":@"NSArray",//比较
                                      @"propertyArrayContent":propertyClassNameStr,//属性类别
                                      };
                [mArr addObject:dic];
            }
        }
        
        if ([propertyTypeStr isEqualToString:@"Class"]) {
            if (![propertyNameStr isEqualToString:@""]&&
                ![propertyDesStr isEqualToString:@""]&&
                ![propertyClassNameStr isEqualToString:@""]) {
                
                NSDictionary *dic = @{@"propertyDes":propertyDesStr,//描述
                                      @"propertyKeyword":@"strong",//关键字
                                      @"propertyClassName":propertyClassNameStr,//类名
                                      @"propertyName":propertyNameStr,//属性名
                                      
                                      @"propertyType":propertyTypeStr,//属性类别
                                      };
                [mArr addObject:dic];
            }
        }


        
        
        
//        if (![propertyNameStr isEqualToString:@""] &&
//            ![propertyTypeStr isEqualToString:@""] &&
//            ![propertyClassNameStr isEqualToString:@""] &&
//            ![propertyDesStr isEqualToString:@""]) {
//
//            if ([propertyTypeStr isEqualToString:@"Class"]) {
//                propertyTypeStr = propertyClassNameTextField.stringValue;
//            }
//
//            NSDictionary *dic = @{@"propertyName":propertyNameStr,
//                                  @"propertyType":propertyTypeStr,
//                                  @"propertyClassName":propertyClassNameStr,
//                                  @"propertyDes":propertyDesStr,
//                                  };
//            [mArr addObject:dic];
//        }
    }
    
    NSDictionary *variables = @{@"ClassName":self.classNameTextFiled.stringValue,
                                @"Params":mArr,
                                };
    
    NSString *resultH = [engine processTemplateInFileAtPath:templatePath_h withVariables:variables];
    NSString *resultM = [engine processTemplateInFileAtPath:templatePath_m withVariables:variables];
    
    NSString *bundel=[[NSBundle mainBundle] resourcePath];
    NSString *deskTopLocation=[[bundel substringToIndex:[bundel rangeOfString:@"Library"].location] stringByAppendingFormat:@"Desktop"];
    NSString *pathH = [deskTopLocation stringByAppendingPathComponent:[NSString stringWithFormat:@"DL%@Model.h", self.classNameTextFiled.stringValue]];
    NSString *pathM = [deskTopLocation stringByAppendingPathComponent:[NSString stringWithFormat:@"DL%@Model.m", self.classNameTextFiled.stringValue]];
    
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
