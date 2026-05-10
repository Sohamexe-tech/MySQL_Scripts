use kc_db;

delimiter $$

drop procedure if exists p4 $$
create procedure p4(n int)
begin
    declare i int default 1;
    declare sum int default 0;

    if n is null then
        select "n cannot be null" as ERR_MSG;

    elseif n <= 0 then
        select "n shud be min 1" as ERR_MSG;

    else
        while i <= n do
            set sum = sum + i;
            set i = i + 1;
        end while;

        select concat("sum = ", sum) as MSG;
    end if;
end $$

delimiter ;