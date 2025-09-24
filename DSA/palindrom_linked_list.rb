#Palindrome Linked List (#234)
def is_palindrome(head)
  return false if head.nil? || head.next.nil?

  slow = fast = head 
  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end

  prev = nil
  while slow
    nxt = slow.next
    slow.next = prev
    prev = slow
    slow = nxt
  end

  first, second = head, prev
  while second
    return false if first.val != second.val
    first = first.next
    second = second.next
  end

  true
end