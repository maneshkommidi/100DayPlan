#141. Linked List Cycle
def has_cycle(head)
  slow = fast = head
  while fast && fast.next
    slow = slow.next
    fast = fast.next
    return true if slow == fast
  end
  false
end