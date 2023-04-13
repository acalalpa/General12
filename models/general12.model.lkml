connection: "azuresqlbi"

# include all the views
include: "/views/**/*.view"

datagroup: general12_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: general12_default_datagroup

explore: filtros_grl12 {}
