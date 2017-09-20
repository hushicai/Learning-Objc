
#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

int main (int argc, const char* argv[])
{
    JSContext* context = [[JSContext alloc] init];
    NSString *js = @"function add(a,b) {return a+b}";
    [context evaluateScript:js];

    JSValue *n = [context[@"add"] callWithArguments:@[@2, @3]];
    NSLog(@"---%@", @([n toInt32]));
}

