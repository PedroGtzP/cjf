# The name of this view in Looker is "Tweets"
view: tweets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `analytics1-307400.elecciones_guatemala.Tweets` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Content" in Explore.

  dimension: content {
    type: string
    sql: ${TABLE}.Content ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: hashtag {
    type: string
    sql: ${TABLE}.hashtag ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.Latitud ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_latitud {
    type: sum
    sql: ${latitud} ;;  }
  measure: average_latitud {
    type: average
    sql: ${latitud} ;;  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.Longitud ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }
  measure: count {
    type: count
  }
}
