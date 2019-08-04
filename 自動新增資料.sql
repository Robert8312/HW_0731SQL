-- 自動新增到 detail 表格
DROP PROCEDURE addOrder;
DELIMITER $$

create PROCEDURE addOrder()
BEGIN
	set @i=1;
	SET @end=1001;
	WHILE @i<= @end DO
	set @cid_val="";
	set @pid_val="";
	set @gnum_val="";
	set @gpice_val="";
	set @input_val ="";

	set @cid_val=concat(@i,",");
	set @pid_val=concat(@i,",");	
	set @gnum_val=concat("gnum_",@i);
	set @gpice_val=concat("gpice_",@i);
	set @input_val =concat(@cid_val,@pid_val,"'",@gnum_val,"'",",","'",@gpice_val,"'");
	select @input_val;
	set @stmt = concat("INSERT INTO detail (did, cid, pid, gnum, gpice) VALUES (NUll,",@input_val,")");
	select @stmt;
	PREPARE ss from @stmt;
	EXECUTE ss;
set @i=@i+1;
END
WHILE;
end $$
DELIMITER ;


-- 自動新增到商品
DROP PROCEDURE addProduct;
DELIMITER $$

create PROCEDURE addProduct()
BEGIN
	set @i=1;
	SET @end=101;
	WHILE @i<= @end DO

	set @pname_val="";
	set @pprice_val="";
	set @pimg1_val="";
	set @pimg2_val="";
	set @pimg3_val="";
	set @pimg4_val="";
	set @pimg5_val="";
	set @pimg6_val="";
	set @pimg7_val="";
	set @pimg8_val="";
	set @input_val ="";

	set @pname_val=concat("pname_",@i);
	set @pprice_val=concat("pprice_",@i);
	set @pimg1_val=concat("pimg1_",@i);
	set @pimg2_val=concat("pimg2_",@i);
	set @pimg3_val=concat("pimg3_",@i);
	set @pimg4_val=concat("pimg4_",@i);
	set @pimg5_val=concat("pimg5_",@i);
	set @pimg6_val=concat("pimg6_",@i);
	set @pimg7_val=concat("pimg7_",@i);
	set @pimg8_val=concat("pimg8_",@i);
	set @input_val =concat("'",@pname_val,"'",",","'",@pprice_val,"'",",","'",@pimg1_val,"'",",","'",@pimg2_val,"'",",","'",@pimg3_val,"'",",","'",@pimg4_val,"'",",","'",@pimg5_val,"'",",","'",@pimg6_val,"'",",","'",@pimg7_val,"'",",","'",@pimg8_val,"'");
	select @input_val;
	set @stmt = concat("INSERT INTO product (pid,pname, pprice, pimg1,pimg2,pimg3,pimg4,pimg5,pimg6,pimg7,pimg8) VALUES (NUll,",@input_val,")");
	select @stmt;
	PREPARE ss from @stmt;
	EXECUTE ss;
set @i=@i+1;
END
WHILE;
end $$
DELIMITER ;

-- 新增交易紀錄

DROP PROCEDURE addtransaction;
DELIMITER $$

create PROCEDURE addtransaction()
BEGIN
	set @i=1;
	SET @end=3000;
	WHILE @i<= @end DO
	set @did_val="";
	set @ttime_val="";


	set @did_val=concat(@i,",");
	set @ttime_val=concat("ttime_",@i);
	set @input_val =concat(@did_val,"'",@ttime_val,"'");
	select @input_val;
	set @stmt = concat("INSERT INTO transaction (tid, did, ttime) VALUES (NUll,",@input_val,")");
	select @stmt;
	PREPARE ss from @stmt;
	EXECUTE ss;
set @i=@i+1;
END
WHILE;
end $$
DELIMITER ;