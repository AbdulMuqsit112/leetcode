# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def get_number_from_list(list)
  return list.val if list.next == nil

  "#{get_number_from_list(list.next)}#{list.val}".to_i
end

def add_two_numbers(l1, l2)
  number =  get_number_from_list(l1) + get_number_from_list(l2)
  number.to_s.split('').reverse.map(&:to_i)
end