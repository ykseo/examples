//
//  ViewController.m
//  helloWorld
//
//  Created by YK on 2014. 8. 16..
//  Copyright (c) 2014년 yk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property NSMutableArray *text;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)uiClickAction:(UIButton *)sender {
    _uiTitle.text = [NSString stringWithFormat:@"%d단 구구단은 이렇게",[_inputBox.text intValue]];
    int input = [_inputBox.text intValue];
    NSString *outItem = [NSString stringWithFormat:@""];
    int gugu = 0;
    //배열을 선언 9행짜리
    NSMutableArray *text = [NSMutableArray arrayWithCapacity:9];
 
    for(int j=1; j<=9; j++){
        gugu = input*j;
        //배열에 넣어
        //[text addObject:[NSString stringWithFormat:@"%d * %d = %d",input, j, gugu]];
        outItem = [outItem stringByAppendingFormat:@"%d * %d = %d",input, j, gugu];
        outItem = [outItem stringByAppendingFormat:@"\n"];
        //NSLog(@"%@",outItem);
      
        

    }
    
    /*배열이 잘들어갔는지 로그에 함 찍어보세
    for(NSString *item in text){
        NSLog(@"%@",item);
    }*/
    
    //[goOutputGugu input];
    
    //배열을 테스트 뷰에 뿌려라!
    _outBox.text = outItem;
    //_outBox.text=text.description;
    //_outBox.text = text.debugDescription;
    //_outTableView.t = text.description;
    //텍스트 뷰의 길이가 짧을수있으니깐 스크롤을 만들어주자
    _outBox:NSMakeRange(text.count,0);
    //다음 입력을 위해 입력필드는 깨끗이
    _inputBox.text = @"";
}

@end
