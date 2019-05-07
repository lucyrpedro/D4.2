# Use Case
Datatype commit from a generic application interfacing directly with the ESDM

## Involved Actors
* User
* ESD
* ESD Datatype
* ESD Layout
* Metadata Backend
* Storage Backend

## General Description
* The user has a datatype memory representation created using, e.g., `esd_type_create` and wants to commit this datatype in the storage system using `esd_type_commit`
* The ESD middleware receives the commit request and obtains a serial representation for it from the ESD Datatype component using `esd_type_encode`
* The ESD middleware creates a new object for the datatype (see hdf5_commit for some more information on the type object) and passes the object to the ESD Layout component to initialise it using `esd_layout_init`
* The ESD Layout component determines the storage backend for the object, initialises the object operation table and other relevant object attributes and returns the object to the ESD
* The ESD middleware receives the initialised type object and writes it to the storage backend, e.g., using the object write function obj->write, initialised by the layout component

## General Considerations
* Here we are assuming that objects (including variables, datatypes, dataspaces, etc) can be stored in different backends. Therefore, every object should have a list of relevant attributes that are initialised by the layout component basing on the storage backend chosen.
