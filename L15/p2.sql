use kc_db;

delimiter $$

drop procedure if exists p2 $$
create procedure p2(n int)
begin
    declare i int default 1;

    if n is null then
        select "n cannot be null" as ERR_MSG;

    elseif n <= 0 then
        select "n shud be min 1" as ERR_MSG;

    else
        repeat
            select concat("i = ", i, " Hare Rama Hare Krishna Radhe Radhe") as MSG;
            set i = i + 1;
        until i > n
        end repeat;
    end if;
end $$

delimiter ;