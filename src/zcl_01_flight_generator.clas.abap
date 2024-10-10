CLASS zcl_01_flight_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_flight_generator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Detele Data
  delete from z01_flight.
  out->write( |Deleted: { sy-dbcnt }| ).

    DATA flight TYPE z01_flight.
    DATA flights TYPE TABLE OF z01_flight.

    "Add flight
    flight-client = sy-mandt.
    flight-airline_id = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date = '20241117'.
    flight-flight_price = '325.88'.
    flight-currency_code = 'EUR'.
    flight-created_by = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.

    append flight to flights.

    "Add flight
    flight-client = sy-mandt.
    flight-airline_id = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date = '20241120'.
    flight-flight_price = '531.21'.
    flight-currency_code = 'EUR'.
    flight-created_by = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.

    append flight to flights.

    "Add flight
    flight-client = sy-mandt.
    flight-airline_id = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date = '20250104'.
    flight-flight_price = '420.43'.
    flight-currency_code = 'EUR'.
    flight-created_by = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.

    append flight to flights.

    "Insert Data
    insert z01_flight from table @flights.
    out->write( |Inserted: { sy-dbcnt }| ).


  ENDMETHOD.
ENDCLASS.
