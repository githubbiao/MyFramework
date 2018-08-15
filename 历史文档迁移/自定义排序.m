//
//  main.m
//  sort
//
//  Created by Q标 on 2016/12/9.
//  Copyright © 2016年 qbiao. All rights reserved.
//

#import <Foundation/Foundation.h>

NSArray *sort(NSArray *formatArray, NSArray *originalArray);

int main(int argc, const char * argv[]) {
    
    NSArray *sAr = @[@"aaa", @"bbb", @"ccc", @"ddd", @"eee", @"fff", @"ggg"];
    NSArray *oAr = @[@"ccc", @"aaa", @"fff", @"ddd"];
    
    NSArray *targetA = sort(sAr, oAr);
    NSLog(@"%@", targetA);
    return 0;
}

NSArray *sort(NSArray *formatArray, NSArray *originalArray) {
    
    // 排序规则为value， 带排序对象为key
    
    NSMutableDictionary *formatDic = @{}.mutableCopy;
    [formatArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *key = [NSString stringWithFormat:@"%ld", idx];
        formatDic[obj] = key;
    }];
    
    // 中间数组 @[@{待排序数据，排序规则}, {待排序数据，排序规则}，{待排序数据，排序规则}，{待排序数据，排序规则}]
    NSMutableArray *tempArray = @[].mutableCopy;
    
    [originalArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id key = formatDic[obj];
        NSDictionary *dic = @{@"value":obj, @"sort":key};
        [tempArray addObject:dic];
    }];
    
    
    // 设置排序描述
    
    NSSortDescriptor *sortDescript = [NSSortDescriptor sortDescriptorWithKey:@"sort" ascending:YES selector:@selector(compare:)];
    [tempArray sortUsingDescriptors:@[sortDescript]];
    NSMutableArray *targetArray = @[].mutableCopy;
    [tempArray enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [targetArray addObject:obj[@"value"]];
    }];
    return targetArray.copy;
}
