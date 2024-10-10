CLASS zcl_01_demo_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_demo_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "DATA departure_airport_id TYPE z01_departure_airport_id.
    SELECT from /lrn/s4d430_ind
    fields *
    into table @Data(result).
    out->write( 'Hi' ).

  ENDMETHOD.
ENDCLASS.
