//
//  YZLearnKVOVC.h
//  YZCodeProject
//
//  Created by jonzhang on 2019/8/19.
//  Copyright © 2019 xinmei. All rights reserved.
//

#import "YZBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

/**
 1,注册监听
 2,接收通知
 3,移除监听(被观察者在 -dealloc 时，并没有移除观察者，所以会造成崩溃), 在 iOS 11 中，系统已经帮我们做了 KVO 的 keyPath 移除操作。遗憾的是，iOS 11 以下，不移除仍然存在问题
 4,开源框架 FBKVOController
 
 kVO 实现的原理
 1，当观察对象A时，KVO机制动态创建一个新的名为：NSKVONotifying_A 的新类，该类继承自对象A的本类
 2，且 KVO 为 NSKVONotifying_A 重写观察属性的 setter 方法，setter 方法会负责在调用原 setter 方法之前和之后，通知所有观察对象属性值的更改情况。
 
 系统kvo的特点

 需要手动移除观察者，且移除观察者的时机必须合适；
 注册观察者的代码和事件发生处的代码上下文不同，传递上下文是通过 void * 指针；
 需要覆写 -observeValueForKeyPath:ofObject:change:context: 方法，比较麻烦；
 在复杂的业务逻辑中，准确判断被观察者相对比较麻烦，有多个被观测的对象和属性时，需要在方法中写大量的 if 进行判断；
 
 使用 KVOController 进行键值观测可以说完美地解决了在使用原生 KVO 时遇到的各种问题。
 
 不需要手动移除观察者；
 实现 KVO 与事件发生处的代码上下文相同，不需要跨方法传参数；
 使用 block 来替代方法能够减少使用的复杂度，提升使用 KVO 的体验；
 每一个 keyPath 会对应一个属性，不需要在 block 中使用 if 判断 keyPath；

 
 */
@interface YZLearnKVOVC : YZBaseViewController

@end

NS_ASSUME_NONNULL_END
