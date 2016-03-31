#include <stack>
#include <iostream>

class Queue {
public:
    // Push element x to the back of queue.
    void push(int x) {
        this->m_stack1.push(x);
    }

    // Removes the element from in front of queue.
    void pop(void) {
        this->peek();

        if (!this->m_stack2.empty()) {
            this->m_stack2.pop();
        }
    }

    // Get the front element.
    int peek(void) {
        if (this->m_stack2.empty()) {
            this->moveElementsToStack2();
        }

        return this->m_stack2.top();
    }

    // Return whether the queue is empty.
    bool empty(void) {
        return this->m_stack1.empty() && this->m_stack2.empty();
    }

private:
    void moveElementsToStack2() {
        while (!this->m_stack1.empty()) {
            this->m_stack2.push(this->m_stack1.top());
            this->m_stack1.pop();
        }
    }

private:
    std::stack<int> m_stack1;
    std::stack<int> m_stack2;
};

int main() {
    Queue q = Queue();
    q.push(1);
    q.pop();
    q.push(2);
    int i = q.peek();

    return 0;
}
