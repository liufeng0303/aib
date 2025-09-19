
CREATE FUNCTION change_wdate()
RETURNS integer AS
$$
DECLARE
	i_ret int := 0;
	s_pval_0000 varchar;
	s_pval_0001 varchar;
	s_pval_0002 varchar;
BEGIN

	select trim(pval) into s_pval_0000 from sys_parameter where id = '0000';
	select trim(pval) into s_pval_0001 from sys_parameter where id = '0001';
	select trim(pval) into s_pval_0002 from sys_parameter where id = '0002';

	update sys_parameter set pval = s_pval_0001 where id = '0000';
	update sys_parameter set pval = s_pval_0002 where id = '0001';
	update sys_parameter set pval = to_char( to_date(s_pval_0002,'YYYYMMDD')+1, 'YYYYMMDD' ) where id = '0002';

	return i_ret;
END;
$$ LANGUAGE plpgsql;

