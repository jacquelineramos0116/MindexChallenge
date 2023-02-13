--Name: Jacqueline Ramos
--Description: This is my SQL query for Mindex Data & Analytics Code Challenge.
--It produces the total yards for each receiver and the number of wins to losses.

select sum("Boyd_Yards") AS "Boyd Yards", sum("Higgins_Yards") as "Higgins Yards", sum("Chase_Yards") as "Chase Yards", 
concat(sum(
case
	when "Result"='Win' then 1
	when "Result"='Loss' then 0
end),
'-',
sum(case 
	when "Result" = 'Win'then 0
	when "Result" = 'Loss' then 1
end) 
) as "Win/Loss"
from jacqueline_ramos;
