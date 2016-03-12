/*
 *Given a Weather table, write a SQL query to find all dates' Ids with higher temperature compared to its previous (yesterday's) dates.
 *
 *+---------+------------+------------------+
 *| Id(INT) | Date(DATE) | Temperature(INT) |
 *+---------+------------+------------------+
 *|       1 | 2015-01-01 |               10 |
 *|       2 | 2015-01-02 |               25 |
 *|       3 | 2015-01-03 |               20 |
 *|       4 | 2015-01-04 |               30 |
 *+---------+------------+------------------+
 *For example, return the following Ids for the above Weather table:
 *+----+
 *| Id |
 *+----+
 *|  2 |
 *|  4 |
 *+----+
 */

select w1.Id Id 
from Weather w1, Weather w2
where datediff(w1.Date,w2.Date)=1 and w1.Temperature > w2.Temperature

/* datediff returns w1.Date - w2.Date */
