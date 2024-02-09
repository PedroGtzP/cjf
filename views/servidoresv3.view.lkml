# The name of this view in Looker is "Servidoresv3"
view: servidoresv3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `elecciones_guatemala.servidoresv3` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Adscripci N Original De La Medidas Vigentes" in Explore.

  dimension: adscripci__n_original_de_la_medidas_vigentes {
    type: string
    sql: ${TABLE}.Adscripci__n_original_de_la_medidas_vigentes ;;
  }

  dimension: concluido {
    type: yesno
    sql: ${TABLE}.Concluido ;;
  }

  dimension: consecutivo {
    type: number
    sql: ${TABLE}.Consecutivo ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_consecutivo {
    type: sum
    sql: ${consecutivo} ;;  }
  measure: average_consecutivo {
    type: average
    sql: ${consecutivo} ;;  }

  dimension: detalle_del_motivo_de_asignaci__n_y_o_continuaci__n {
    type: string
    sql: ${TABLE}.Detalle_del_motivo_de_asignaci__n_y_o_continuaci__n ;;
  }

  dimension: domicilio {
    type: string
    sql: ${TABLE}.Domicilio ;;
  }

  dimension: entidad_federativa {
    type: string
    sql: ${TABLE}.Entidad_Federativa ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_de_inicio_ {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_de_inicio_ ;;
  }

  dimension: fecha_de_vencimiento {
    type: string
    sql: ${TABLE}.Fecha_de_vencimiento ;;
  }

  dimension: lat_ {
    type: number
    sql: ${TABLE}.Lat_ ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.Long ;;
  }

  dimension: lugar_de_adscripci__n_actual {
    type: string
    sql: ${TABLE}.Lugar_de_adscripci__n_actual ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.Motivo ;;
  }

  dimension: nombre_del_funcionario {
    type: string
    sql: ${TABLE}.Nombre_del_Funcionario ;;
  }

  dimension: prenda_de_protecci__n_personal {
    type: string
    sql: ${TABLE}.Prenda_de_protecci__n_personal ;;
  }

  dimension: prestador_del_servicio {
    type: string
    sql: ${TABLE}.Prestador_del_servicio ;;
  }

  dimension: puesto {
    type: string
    sql: ${TABLE}.Puesto ;;
  }

  dimension: string_field_19 {
    type: string
    sql: ${TABLE}.string_field_19 ;;
  }

  dimension: string_field_20 {
    type: string
    sql: ${TABLE}.string_field_20 ;;
  }

  dimension: string_field_21 {
    type: string
    sql: ${TABLE}.string_field_21 ;;
  }

  dimension: string_field_22 {
    type: string
    sql: ${TABLE}.string_field_22 ;;
  }

  dimension: string_field_23 {
    type: string
    sql: ${TABLE}.string_field_23 ;;
  }

  dimension: tipo_de_medidas {
    type: string
    sql: ${TABLE}.Tipo_de_medidas ;;
  }

  dimension: veh__culo_blindado {
    type: string
    sql: ${TABLE}.Veh__culo_blindado ;;
  }

  dimension: veh__culo_escolta {
    type: string
    sql: ${TABLE}.Veh__culo_escolta ;;
  }
  measure: count {
    type: count
  }
}
