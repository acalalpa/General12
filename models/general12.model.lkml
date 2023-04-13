connection: "azuresqlbi"

# include all the views
include: "/views/**/*.view"

datagroup: general12_default_datagroup {
  sql_trigger: "SELECT GETUTCDATE() as looker_trigger" # Runs every 6 hours
      persist_for: "6 hours" # Retains data for 6 hours before it is refreshed
      cache_time: "6 hours" # Caches data for 6 hours
      # max_cache_age: "6 hour";;
}

persist_with: general12_default_datagroup

explore: filtros_grl12 {}
