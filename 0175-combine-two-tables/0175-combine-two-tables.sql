# Write your MySQL query statement below
SELECT p.firstName,lastName,a.city,a.state
from person p
left join address a
on p.personId=a.personId