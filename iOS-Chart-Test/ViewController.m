//
//  ViewController.m
//  iOS-Chart-Test
//
//  Created by Alvin Zeng on 10/8/15.
//  Copyright © 2015 Forte. All rights reserved.
//

#import "ViewController.h"
@import Charts;

@interface ViewController () <ChartViewDelegate> {
    IBOutlet LineChartView *_lineChartView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _lineChartView.delegate = self;
    //_lineChartView.backgroundColor = [UIColor yellowColor];
    
    _lineChartView.descriptionText = @"";
    _lineChartView.noDataTextDescription = @"You need to provide data for the chart.";
    
    _lineChartView.drawGridBackgroundEnabled = YES;
    _lineChartView.dragEnabled = NO;
    [_lineChartView setScaleEnabled:NO];
    _lineChartView.pinchZoomEnabled = NO;
    //[_lineChartView setViewPortOffsetsWithLeft:10.0 top:0.0 right:10.0 bottom:0.0];
    
    _lineChartView.legend.enabled = NO;
    
    _lineChartView.leftAxis.enabled = NO;
    _lineChartView.rightAxis.enabled = NO;
    _lineChartView.xAxis.enabled = NO;
    
    NSMutableArray *xVals = [[NSMutableArray alloc] init];
    
    [xVals addObject:@"1442246400000"];
    [xVals addObject:@"1442419200000"];
    [xVals addObject:@"1442505600000"];
    [xVals addObject:@"1442764800000"];
    [xVals addObject:@"1442851200000"];
    
    
    NSMutableArray *yVals = [[NSMutableArray alloc] init];
    
    [yVals addObject:[[ChartDataEntry alloc] initWithValue:0 xIndex:0]];
    [yVals addObject:[[ChartDataEntry alloc] initWithValue:-1 xIndex:1]];
    [yVals addObject:[[ChartDataEntry alloc] initWithValue:0.01170003414154053 xIndex:2]];
    [yVals addObject:[[ChartDataEntry alloc] initWithValue:0.04190003871917725 xIndex:3]];
    [yVals addObject:[[ChartDataEntry alloc] initWithValue:0.05540001392364502 xIndex:4]];
    
    LineChartDataSet *set1 = [[LineChartDataSet alloc] initWithYVals:yVals label:@"DataSet 1"];
    
    set1.lineWidth = 1.75;
    set1.circleRadius = 3.0;
    [set1 setColor:[UIColor orangeColor]];
    [set1 setCircleColor:UIColor.whiteColor];
    set1.highlightColor = UIColor.whiteColor;
    set1.drawValuesEnabled = NO;
    set1.drawCubicEnabled = YES;
    set1.cubicIntensity = 0.5;
    
    _lineChartView.data = [[LineChartData alloc] initWithXVals:xVals dataSet:set1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
