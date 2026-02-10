-- back compat for old kwarg name
  
  begin;
    
        
            
	    
	    
            
        
    

    

    merge into analytics.dbt_lbk_fusion_mig.inc_orders as DBT_INTERNAL_DEST
        using analytics.dbt_lbk_fusion_mig.inc_orders__dbt_tmp as DBT_INTERNAL_SOURCE
        on ((DBT_INTERNAL_SOURCE.order_id = DBT_INTERNAL_DEST.order_id))

    
    when matched then update set
        "ORDER_ID" = DBT_INTERNAL_SOURCE."ORDER_ID","CUSTOMER_ID" = DBT_INTERNAL_SOURCE."CUSTOMER_ID","STATUS" = DBT_INTERNAL_SOURCE."STATUS","ORDER_DATE" = DBT_INTERNAL_SOURCE."ORDER_DATE","MODIFIED_AT" = DBT_INTERNAL_SOURCE."MODIFIED_AT"
    

    when not matched then insert
        ("ORDER_ID", "CUSTOMER_ID", "STATUS", "ORDER_DATE", "MODIFIED_AT")
    values
        ("ORDER_ID", "CUSTOMER_ID", "STATUS", "ORDER_DATE", "MODIFIED_AT")

;
    commit;