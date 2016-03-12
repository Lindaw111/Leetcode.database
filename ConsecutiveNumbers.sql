/*
 *Write a SQL query to find all numbers that appear at least three times consecutively.
 *
 *+----+-----+
 *| Id | Num |
 *+----+-----+
 *| 1  |  1  |
 *| 2  |  1  |
 *| 3  |  1  |
 *| 4  |  2  |
 *| 5  |  1  |
 *| 6  |  2  |
 *| 7  |  2  |
 *+----+-----+
 *For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.
 */

select DISTINCT l1.Num
from Logs l1, Logs l2, Logs l3
where l1.Id + 1 = L2.Id and L2.Id + 1 = L3.Id
and L1.Num = L2.Num and L2.Num = l3.Num
