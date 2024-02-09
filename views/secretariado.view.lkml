# The name of this view in Looker is "Secretariado"
view: secretariado {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `elecciones_guatemala.Secretariado` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Abril" in Explore.

  dimension: abril {
    type: number
    sql: ${TABLE}.Abril ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_abril {
    type: sum
    sql: ${abril} ;;  }
  measure: average_abril {
    type: average
    sql: ${abril} ;;  }

  dimension: agosto {
    type: number
    sql: ${TABLE}.Agosto ;;
  }

  dimension: enero {
    type: number
    sql: ${TABLE}.Enero ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: febrero_ {
    type: number
    sql: ${TABLE}.Febrero_ ;;
  }

  dimension: julio {
    type: number
    sql: ${TABLE}.Julio ;;
  }

  dimension: junio {
    type: number
    sql: ${TABLE}.Junio ;;
  }

  dimension: marzo {
    type: number
    sql: ${TABLE}.Marzo ;;
  }

  dimension: mayo {
    type: number
    sql: ${TABLE}.Mayo ;;
  }

  dimension: octubre {
    type: number
    sql: ${TABLE}.Octubre ;;
  }

  dimension: septiembre {
    type: number
    sql: ${TABLE}.Septiembre ;;
  }

  dimension: tipo_de_delito__subtipo_y_modalidad {
    type: string
    sql: ${TABLE}.Tipo_de_delito__subtipo_y_modalidad ;;
  }

  dimension: total_anual {
    type: number
    sql: ${TABLE}.TotalAnual ;;
  }

  ###################
  measure: total_anual_sum {
    type: sum
    sql: ${TABLE}.TotalAnual ;;
  }
  measure: agosto_sum {
    type: sum
    sql: ${TABLE}.Agosto ;;
  }

  measure: enero_sum {
    type: sum
    sql: ${TABLE}.Enero ;;
  }

  measure: febrero_sum {
    type: sum
    sql: ${TABLE}.Febrero_ ;;
  }

  measure: julio_sum {
    type: sum
    sql: ${TABLE}.Julio ;;
  }

  measure: junio_sum {
    type: sum
    sql: ${TABLE}.Junio ;;
  }

  measure: marzo_sum {
    type: sum
    sql: ${TABLE}.Marzo ;;
  }

  measure: mayo_sum {
    type: sum
    sql: ${TABLE}.Mayo ;;
  }

  measure: octubre_sum {
    type: sum
    sql: ${TABLE}.Octubre ;;
  }

  measure: septiembre_sum {
    type: sum
    sql: ${TABLE}.Septiembre ;;
  }
  measure: abril_sum {
    type: sum
    sql: ${TABLE}.Abril ;;
  }

  measure: count {
    type: count
  }
}
