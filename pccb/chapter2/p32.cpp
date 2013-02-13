#include <cstdio>
#include <stack>
#include <queue>

using namespace std;

int stack_call() {
    stack<int> s;
    s.push(1);
    s.push(2);
    s.push(3);
    printf("%d\n", s.top());
    s.pop();
    printf("%d\n", s.top());
    s.pop();
    printf("%d\n", s.top());
    s.pop();
    return 0;
}

int queue_call() {
    queue<int> que;
    que.push(1);
    que.push(2);
    que.push(3);
    printf("%d\n", que.front());
    que.pop();
    printf("%d\n", que.front());
    que.pop();
    printf("%d\n", que.front());
    return 0;
}


int main() {
    stack_call();
    queue_call();
}
