-- back compat for old kwarg name
  
  begin;
    

        insert into analytics.dbt_lbk_fusion_mig.materialization_incremental ("CUSTOMER_KEY", "NAME", "ADDRESS", "NATION_KEY", "PHONE_NUMBER", "ACCOUNT_BALANCE", "MARKET_SEGMENT", "COMMENT")
        (
            select "CUSTOMER_KEY", "NAME", "ADDRESS", "NATION_KEY", "PHONE_NUMBER", "ACCOUNT_BALANCE", "MARKET_SEGMENT", "COMMENT"
            from analytics.dbt_lbk_fusion_mig.materialization_incremental__dbt_tmp
        );
    commit;