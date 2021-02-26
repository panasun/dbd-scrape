select company_id, company, est_date, obj_3, obj_4, revenue, profit, address, board_list, link from (
	SELECT * from company_profile as p
	INNER JOIN company_summary as s
		ON p.company_id = s.company_id
	WHERE (obj_3 LIKE '%47912%' or obj_3 LIKE '%47723%' or obj_3 LIKE '%46443%' or obj_3 LIKE '%47991%') and s.province = 'กรุงเทพมหานคร' and revenue < 10000000
)
order by revenue desc