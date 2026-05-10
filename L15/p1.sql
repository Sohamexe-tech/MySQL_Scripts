use kc_db;

delimiter $$

drop procedure if exists p1 $$
create procedure p1(n int)
begin
    declare i int default 1;

    if n is null then
        select "n cannot be null" as ERR_MSG;

    elseif n <= 0 then
        select "n shud be min 1" as ERR_MSG;

    else
        while i <= n do
            select concat("i = ", i, " Hare Rama Hare Krishna Radhe Radhe") as MSG;
            set i = i + 1;
        end while;
    end if;
end $$

delimiter ;