use kc_db;

delimiter $$

drop procedure if exists p3 $$
create procedure p3(n int)
begin
    declare i int default 1;

    if n is null then
        select "n cannot be null" as ERR_MSG;

    elseif n <= 0 then
        select "n shud be min 1" as ERR_MSG;

    else
        abc: loop
            select concat("i = ", i, " Hare Rama Hare Krishna Radhe Radhe") as MSG;
            set i = i + 1;

            if i > n then
                leave abc;
            end if;
        end loop;
    end if;
end $$

delimiter ;