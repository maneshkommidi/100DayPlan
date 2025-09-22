#Reverse Linked List (#206)
def reverse_list(head)
  prev = nil
  curr = head

  while curr
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt
  end
  prev
end
