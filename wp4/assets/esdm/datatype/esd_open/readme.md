# Use Case
Datatype open from a generic application interfacing directly with the ESDM

## Involved Actors
* User
* ESD
* ESD Datatype
* ESD Layout
* Metadata Backend
* Storage Backend

## General Description
* The user wants to open a named datatype in the storage system using `esd_type_open`
* The ESD middleware receives the open request, creates a new type object and initialises it by invoking `esd_layout_init`
* The ESD Layout component looks up the named datatype in the metadata server and initialises the object correspondingly
* The ESD middleware receives the initialised type object from the layout component and can use this to read the serial representation of the datatype from the storage backend
* The ESD middleware then asks the ESD Datatype component to decode the datatype using `esd_type_decode` and receives a pointer to a in memory representation that is returned to the User

## General Considerations
