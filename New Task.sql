use stock_db;



 DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `my_procedure`(IN id INTEGER)
BEGIN                                      
  DECLARE name CHAR(10);                 
  IF id = 1 THEN                    
    INSERT INTO tbl_numbers VALUES (id,'sat');    
  END IF;
     
  IF id = 2 THEN                    
    INSERT INTO tbl_numbers VALUES (id,'rajat');    
  END IF;
  
  IF id = 3 THEN                    
    INSERT INTO tbl_numbers VALUES (id,'Nirmala');     
  END IF;
  
  IF id = 4 THEN                    
    INSERT INTO tbl_numbers VALUES (id,'Dijit');     
  END IF;
  
  
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `p`()
select * from user_registration$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `p1`()
BEGIN
 select * from user_registration;
 END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inward_entry`(IN id INTEGER,
IN sp_inward_sr_no int,
IN inw_ent_date  varchar(50),
IN inw_ent_time varchar(50),
IN sp_inw_ent_description varchar(100),
IN sp_inw_ent_cat_no varchar(20),
IN sp_inw_ent_product_name varchar(50),
IN sp_inw_ent_opening_qty bigint,
IN sp_inw_ent_unit varchar(50),
IN sp_inw_remark varchar(50)
)
BEGIN                                      /* start body of the procedure*/
  DECLARE name CHAR(10);                /* A simple variable those can be used in  stored procedure */
  IF id = 1 THEN                    /* Simple conditional block */
    
    INSERT INTO inward_entry(inw_ent_date,inw_ent_time,inw_ent_description,inw_ent_cat_no,inw_ent_product_name,inw_ent_opening_qty,inw_ent_unit,inward_remark) VALUES (inw_ent_date,inw_ent_time,sp_inw_ent_description,sp_inw_ent_cat_no,sp_inw_ent_product_name,sp_inw_ent_opening_qty,sp_inw_ent_unit,sp_inw_remark);    /*  sql insert statement */
    
    INSERT INTO inward_entry_history(inw_ent_date,inw_ent_time,inw_ent_description,inw_ent_cat_no,inw_ent_product_name,inw_ent_opening_qty,inw_ent_unit,inward_remark,inward_operation) VALUES (inw_ent_date,inw_ent_time,sp_inw_ent_description,sp_inw_ent_cat_no,sp_inw_ent_product_name,sp_inw_ent_opening_qty,sp_inw_ent_unit,sp_inw_remark,'Entry saved');    /*  sql insert statement */
    
  END IF;
     
  IF id = 2 THEN                    /* Simple conditional block */
    SELECT * FROM  inward_entry ;    /*  sql insert statement */
	
  END IF;
  
  IF id = 3 THEN                    /* Simple conditional block */
    update inward_entry set  inw_ent_description=sp_inw_ent_description,inw_ent_cat_no=sp_inw_ent_cat_no,inw_ent_product_name=sp_inw_ent_product_name,inw_ent_opening_qty=sp_inw_ent_opening_qty,inw_ent_unit=sp_inw_ent_unit,inward_remark=sp_inw_remark  /*  sql insert statement */
	where inward_sr_no=sp_inward_sr_no;
    
     INSERT INTO inward_entry_history(inw_ent_date,inw_ent_time,inw_ent_description,inw_ent_cat_no,inw_ent_product_name,inw_ent_opening_qty,inw_ent_unit,inward_remark,inward_operation) VALUES (inw_ent_date,inw_ent_time,sp_inw_ent_description,sp_inw_ent_cat_no,sp_inw_ent_product_name,sp_inw_ent_opening_qty,sp_inw_ent_unit,sp_inw_remark,'Entry updated');    /*  sql insert statement */
    
  END IF;
  
  IF id = 4 THEN                    /* Simple conditional block */
     DELETE FROM  inward_entry where inward_sr_no=sp_inward_sr_no;   /*  sql insert statement */
      INSERT INTO inward_entry_history(inw_ent_date,inw_ent_time,inw_ent_description,inw_ent_cat_no,inw_ent_product_name,inw_ent_opening_qty,inw_ent_unit,inward_remark,inward_operation) VALUES (inw_ent_date,inw_ent_time,sp_inw_ent_description,sp_inw_ent_cat_no,sp_inw_ent_product_name,sp_inw_ent_opening_qty,sp_inw_ent_unit,sp_inw_remark,'Entry deleted');    /*  sql insert statement */
   END IF ;
  
  IF id = 5 THEN                    /* Simple conditional block */
    select * from inward_entry where inw_ent_description LIKE concat('%' , sp_inw_ent_description , '%') ;  /*  sql insert statement */
  END IF ;
  
   IF id = 6 THEN                    /* Simple conditional block */
    select * from inward_entry_history where inw_ent_cat_no LIKE concat('%' , sp_inw_ent_cat_no , '%') ;  /*  sql insert statement */
  END IF ;
  
  IF id = 7 THEN                    /* Simple conditional block */
    select * from inward_entry_history where inw_ent_product_name LIKE concat('%' , sp_inw_ent_product_name , '%') ;  /*  sql insert statement */
  END IF ;
  
    IF id = 8 THEN                    /* Simple conditional block */
    select * from inward_entry where  inward_sr_no=sp_inward_sr_no;
  END IF ;
 
   IF id = 9 THEN                    /* Simple conditional block */
    select * from inward_entry_history;  
  END IF ;
  
   IF id = 10 THEN                    /* Simple conditional block */
    select * from inward_entry_history where inw_ent_description LIKE concat('%' , sp_inw_ent_description , '%') ;  /*  sql insert statement */
  END IF ;
  
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inward_History1`(IN flag integer ,
	 IN sp_inw_ent_description varchar(100),
	 IN sp_inw_ent_cat_no varchar(20),
     IN sp_inw_ent_product_name varchar(50),
    IN  out_ent_Date1 varchar(20),
    IN  out_ent_Date2 varchar(20)
   
)
BEGIN          
   IF flag= 1 THEN                    
     select * from  inward_entry_history ;
  END IF;
     
   IF flag= 2 THEN                    
     select * from  inward_entry_history where inw_ent_date  >= out_ent_Date1 AND  inw_ent_date <=out_ent_Date2;
   END IF;
     
      IF flag= 3 THEN                    
     select * from  inward_entry_history where inw_ent_date  >= out_ent_Date1 AND  inw_ent_date <=out_ent_Date2 AND inw_ent_description LIKE concat('%' , sp_inw_ent_description , '%') ;
   END IF;
 
  IF flag= 4 THEN                    
     select * from  inward_entry_history  where inw_ent_date  >= out_ent_Date1 AND  inw_ent_date <=out_ent_Date2 AND inw_ent_cat_no LIKE concat('%' , sp_inw_ent_cat_no , '%') ;
   END IF;
   
   IF flag= 5 THEN                    
     select * from  inward_entry_history where inw_ent_date  >= out_ent_Date1 AND  inw_ent_date <=out_ent_Date2 AND inw_ent_product_name LIKE concat('%' , sp_inw_ent_product_name , '%') ; 
   END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_outward_entry`(IN flag integer ,
	IN  outward_entry_id1 int,
	IN  out_ent_ProductDesription1 varchar(50),
    IN  out_ent_ProductName1 varchar(100),
    IN out_ent_catlogNo1 varchar(100),
    IN out_ent_Quantity1 varchar(20),
    IN out_ent_Unit1 varchar(20),
	IN out_ent_Date1 varchar(20),
    IN  out_ent_Time1 varchar(20),
    IN out_ent_ChallanNo1 varchar(20),
    IN out_ent_SiteNo1 varchar(20),
	IN out_ent_Remark1 varchar(50)
)
BEGIN          
  IF flag= 1 THEN                    
    INSERT INTO  Outward_Entry(out_ent_ProductDesription,out_ent_ProductName,out_ent_catlogNo,out_ent_Quantity,out_ent_Unit,out_ent_Date,out_ent_Time,out_ent_ChallanNo,out_ent_SiteNo,out_ent_Remark )  VALUES (out_ent_ProductDesription1,out_ent_ProductName1,out_ent_catlogNo1,out_ent_Quantity1,out_ent_Unit1, out_ent_Date1,out_ent_Time1,out_ent_ChallanNo1,out_ent_SiteNo1,out_ent_Remark1);    
  
    INSERT INTO  outward_entry_history(out_ent_ProductDesription,out_ent_ProductName,out_ent_catlogNo,out_ent_Quantity,out_ent_Unit,out_ent_Date,out_ent_Time,out_ent_ChallanNo,out_ent_SiteNo,out_ent_Remark,out_ent_operation )  VALUES (out_ent_ProductDesription1,out_ent_ProductName1,out_ent_catlogNo1,out_ent_Quantity1,out_ent_Unit1, out_ent_Date1,out_ent_Time1,out_ent_ChallanNo1,out_ent_SiteNo1,out_ent_Remark1,'outward saved');    

  END IF;
     
   IF flag= 2 THEN                    
     select * from  Outward_Entry ;
  END IF;
  
   IF flag=3 THEN                    
     update Outward_Entry  set out_ent_ProductDesription= out_ent_ProductDesription1,out_ent_ProductName=out_ent_ProductName1,out_ent_Quantity=out_ent_Quantity1,out_ent_Unit=out_ent_Unit1,out_ent_Date=out_ent_Date1,out_ent_Time=out_ent_Time1,out_ent_ChallanNo=out_ent_ChallanNo1,out_ent_SiteNo=out_ent_SiteNo1,out_ent_Remark=out_ent_Remark1 where outward_entry_id=outward_entry_id1 ;
     
        INSERT INTO  outward_entry_history(out_ent_ProductDesription,out_ent_ProductName,out_ent_catlogNo,out_ent_Quantity,out_ent_Unit,out_ent_Date,out_ent_Time,out_ent_ChallanNo,out_ent_SiteNo,out_ent_Remark,out_ent_operation )  VALUES (out_ent_ProductDesription1,out_ent_ProductName1,out_ent_catlogNo1,out_ent_Quantity1,out_ent_Unit1, out_ent_Date1,out_ent_Time1,out_ent_ChallanNo1,out_ent_SiteNo1,out_ent_Remark1,'outward updated');    
     END IF;
  
  IF flag=4 THEN                    
    delete  from  Outward_Entry where  outward_entry_id= outward_entry_id1; 
       INSERT INTO  outward_entry_history(out_ent_ProductDesription,out_ent_ProductName,out_ent_catlogNo,out_ent_Quantity,out_ent_Unit,out_ent_Date,out_ent_Time,out_ent_ChallanNo,out_ent_SiteNo,out_ent_Remark,out_ent_operation )  VALUES (out_ent_ProductDesription1,out_ent_ProductName1,out_ent_catlogNo1,out_ent_Quantity1,out_ent_Unit1, out_ent_Date1,out_ent_Time1,out_ent_ChallanNo1,out_ent_SiteNo1,out_ent_Remark1,'outward deleted');    
    END IF;
     
     
   IF flag= 5 THEN                    
     select * from  Outward_Entry where  out_ent_ProductDesription like concat('%',out_ent_ProductDesription1 ,'%') ;
  END IF;
  
  IF flag= 6 THEN                    
     select * from  Outward_Entry where  out_ent_Date=out_ent_Date1;
  END IF;
    

 IF flag= 7 THEN                    /* Simple conditional block */
    select * from Outward_Entry where  outward_entry_id=outward_entry_id1;
  END IF ;
  
  IF flag= 8 THEN                    /* Simple conditional block */
    select * from  Outward_Entry where out_ent_ProductDesription=out_ent_ProductDesription1 and out_ent_ProductName=out_ent_ProductName1 and out_ent_catlogNo=out_ent_catlogNo1;
  END IF ;
  
   IF flag= 9 THEN                    /* Simple conditional block */
    select SUM(out_ent_Quantity) from  Outward_Entry where out_ent_ProductDesription=out_ent_ProductDesription1 and out_ent_ProductName=out_ent_ProductName1 and out_ent_catlogNo=out_ent_catlogNo1;
  END IF ;
   END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_outward_History`(IN flag integer ,
	 
	IN out_ent_ProductDesription1 varchar(50),
    IN out_ent_catlogNo1 varchar(100),
	IN out_ent_ProductName1 varchar(100),
	IN out_ent_Date1 varchar(20),
	IN out_ent_Date2 varchar(20)
     
)
BEGIN          
   IF flag= 1 THEN                    
     select * from  outward_entry_history ;
  END IF;
     
   IF flag= 2 THEN                    
     select * from  outward_entry_history where  out_ent_ProductDesription like concat('%',out_ent_ProductDesription1 ,'%') ;
  END IF;
  
    IF flag= 3 THEN                    
     select * from  outward_entry_history where out_ent_Date >= out_ent_Date1 AND  out_ent_Date <=out_ent_Date2;
   END IF;
   
    IF flag= 4 THEN                    
     select * from  outward_entry_history where  out_ent_catlogNo like concat('%',out_ent_catlogNo1,'%') ;
  END IF;
     
     IF flag= 5 THEN                    
     select * from  outward_entry_history where out_ent_ProductName like concat('%',out_ent_ProductName1,'%') ;
  END IF;
  
    IF flag= 6 THEN                    
     select * from  outward_entry_history where  (out_ent_Date >= out_ent_Date1 AND  out_ent_Date <=out_ent_Date2) AND out_ent_ProductName like concat('%',out_ent_ProductName1,'%') ;
  END IF;
  
   IF flag= 7 THEN                    
     select * from  outward_entry_history where  out_ent_Date >= out_ent_Date1 AND  out_ent_Date <=out_ent_Date2 AND out_ent_ProductDesription  like concat('%', out_ent_ProductDesription1 ,'%') ;
  END IF;
  
   IF flag= 8 THEN                    
     select * from  outward_entry_history where  out_ent_Date >= out_ent_Date1 AND  out_ent_Date <=out_ent_Date2 AND out_ent_catlogNo  like concat('%', out_ent_catlogNo1,'%') ;
  END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_outward_History1`(IN flag integer ,
	 
    IN  out_ent_Date1 varchar(20),
    IN  out_ent_Date2 varchar(20)
   
)
BEGIN          
   IF flag= 1 THEN                    
     select * from  Outward_Entry ;
  END IF;
     
   IF flag= 2 THEN                    
     select * from  Outward_Entry where out_ent_Date >= out_ent_Date1 AND  out_ent_Date <=out_ent_Date2;
   END IF;
     
 
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registration`(IN flag integer ,
 IN user_reg_id1 int,
 IN user_name2 varchar(50),
 IN first_name1 varchar(20),
 IN last_name1 varchar(20),
 IN pass1 varchar(20),
 IN conformpass1 varchar(10),
 IN  email1 varchar(50),
 IN gender1 varchar(7)    
)
BEGIN          
  IF flag= 1 THEN                    
    INSERT INTO  user_registration(user_name1,first_name,last_name,pass,conformpass,email,gender)  VALUES (user_name2,first_name1,last_name1,pass1,conformpass1,email1,gender1);    
  END IF;
     
   IF flag= 2 THEN                    
     select * from  user_registration ;
  END IF;
  
    IF flag=3 THEN                    
     update  user_registration set user_name1=user_name2,first_name= first_name1,last_name=last_name1,pass=pass1,conformpass=conformpass1,email=email1,gender=gender1 where user_reg_id=user_reg_id1 ;
     END IF;
     
       IF flag=4 THEN                    
    delete  from  user_registration where  user_reg_id=user_reg_id1; 
     END IF;
     
      IF flag= 5 THEN                    
     select * from user_registration where  user_name1 like concat('%',user_name2 ,'%') ;
  END IF;
     
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_stock`(IN flag integer ,
 IN stock_id1 int,
IN  stock_product_description1 varchar(100),
IN stock_product_name1 varchar(100),
IN stock_catlogNo1  varchar(100),
IN stock_quantity1  varchar(100),
IN stock_units1 varchar(100)
)
BEGIN                                       
  DECLARE name CHAR(10);               
  IF flag= 1 THEN                    
    INSERT INTO  stock_available(stock_product_description,stock_product_name,stock_catlogNo,stock_quantity,stock_units)  VALUES (stock_product_description1,stock_product_name1,stock_catlogNo1 , stock_quantity1,stock_units1 );    
  END IF ;
  
  IF flag= 2 THEN                 
     select * from  stock_available ;
  END IF;
  
   IF flag=3 THEN  
	
	 SET SQL_SAFE_UPDATES = 0;
     update stock_available set stock_quantity= stock_quantity1 where stock_product_description=stock_product_description1 AND (stock_product_name=stock_product_name1 AND stock_catlogNo=stock_catlogNo1); 
     END IF;
  
   IF flag=4 THEN                    
     select * from  stock_available where stock_product_description=stock_product_description1 AND (stock_product_name=stock_product_name1 AND stock_catlogNo=stock_catlogNo1); 
     END IF;
     
       IF flag=5 THEN                    
     select * from stock_available where stock_catlogNo LIKE concat('%' , stock_catlogNo1 , '%') ;
     END IF;
     
      IF flag=6 THEN                    
     select * from stock_available where stock_product_name LIKE concat('%' , stock_product_name1 , '%') ;
     END IF;
     
     IF flag=7 THEN                    
     select * from stock_available where stock_product_description LIKE concat('%' , stock_product_description1 , '%') ;
     END IF;
     
      IF flag= 8 THEN                    
     select stock_product_description from stock_available ;
  END IF;
      

 IF flag= 9 THEN                    
     select * from stock_available where stock_product_description=stock_product_description1;
  END IF;
  
   IF flag=10 THEN  
	
	 SET SQL_SAFE_UPDATES = 0;
     update stock_available set stock_quantity= stock_quantity1,stock_product_name=stock_product_name1,stock_catlogNo=stock_catlogNo1 where stock_product_description=stock_product_description1; 
     END IF;
     
   IF flag=11 THEN                    
     select * from  stock_available where stock_product_description=stock_product_description1;
     END IF;
     
      IF flag=12 THEN                    
     select * from  stock_available where stock_product_description=stock_product_description1 and (stock_product_name=stock_product_name1 and stock_catlogNo=stock_catlogNo1);
     END IF;
  
  END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_stock_menufacture`(IN flag integer ,
	IN stock_menufacture_id1 int,
    IN menu_name1  varchar(100)
)
BEGIN          
  IF flag= 1 THEN                    
    INSERT INTO stock_menufacture(menu_name) VALUES(menu_name1);    
  END IF;
     
   IF flag= 2 THEN                    
     select * from  stock_menufacture   ;
  END IF;
  
  IF flag=3 THEN                    
     update stock_menufacture  set menu_name=menu_name1 where  stock_menufacture_id=stock_menufacture_id1; 
     END IF;
  IF flag=4 THEN                    
    delete  from  stock_menufacture where  stock_menufacture_id=stock_menufacture_id1; 
     END IF;
  
   IF flag= 5 THEN                    
     select * from   stock_menufacture where menu_name like concat('%', menu_name1,'%') ;
  END IF;
  
  IF flag= 6 THEN                    
     select  menu_name from  stock_menufacture   ;
  END IF;
  
   IF flag= 7 THEN                    
     select  * from stock_menufacture where menu_name=menu_name1;
  END IF;
  
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_stock_unit`(IN flag integer ,
	IN stock_unit_id1 int,
    IN unit_name1 varchar(100)
)
BEGIN          
 IF flag= 1 THEN                    
    INSERT INTO stock_unit(unit_name) VALUES ( unit_name1);    
  END IF;
     
   IF flag= 2 THEN                    
     select * from  stock_unit  ;
  END IF;
  
   IF flag=3 THEN                    
     update stock_unit  set unit_name=unit_name1  where  stock_unit_id=stock_unit_id1; 
     END IF;
  
  IF flag=4 THEN                    
    delete  from  stock_unit where  stock_unit_id=stock_unit_id1; 
     END IF;
  
    IF flag= 5 THEN                    
     select * from  stock_unit where unit_name like concat('%', unit_name1,'%') ;
  END IF;
  
   IF flag= 6 THEN                    
     select  unit_name from stock_unit ;
  END IF;
  
   IF flag= 7 THEN                    
     select  * from stock_unit where unit_name=unit_name1;
  END IF;
  
END$$
DELIMITER ;







