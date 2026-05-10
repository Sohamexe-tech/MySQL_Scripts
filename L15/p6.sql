use kc_db;

delimiter $$

drop procedure if exists p6 $$
create procedure p6(n int)
begin
    declare i int default 1;
    declare sum int default 0;

    if n is null then
        select "n cannot be null" as ERR_MSG;

    elseif n <= 0 then
        select "n shud be min 1" as ERR_MSG;

    else
        abc: loop
            set sum = sum + i;
            set i = i + 1;

            if i > n then
                leave abc;
            end if;
        end loop;

        select concat("sum = ", sum) as MSG;
    end if;
end $$

delimiter ;