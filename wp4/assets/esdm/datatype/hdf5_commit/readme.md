# Use Case
Datatype commit from a HDF5 application interfacing with the ESDM using the VOL ESD Plugin

## Involved Actors
* HDF5 VOL
* ESD Plugin
* ESD Datatype
* ESD Layout
* Metadata Backend
* Storage Backend

## General Description
* The HDF5 library issues a `H5Tcommit` on the `hid_t` of a created datatype
* The HDF5 VOL layer receives the `hid_t` of the datatype and a pointer to the datatype parent object
* The ESD Plugin encodes the datatype using `H5Tencode` and gets a buffer containing the serial representation of the datatype in the HDF5 serial format
* The encoded buffer is passed to the ESD middleware using a special function, i.e. `esd_h5_type_commit`. This will tell the ESD that this is an encoded HDF5 type
* The ESD middleware passes the encoded datatype buffer to the ESD Datatype component that copies it into a new buffer and adds a header marking it as HDF5 serial format
* The resulting encoded buffer is returned from the ESD Datatype to the ESD middleware frontend that now needs to place the encoded type in the storage system
* The ESD middleware creates a special type object containing the encoded buffer plus additional attributes (e.g. an operation table, storage backend ID, etc) and passes this object to the ESD Layout component through the `esd_layout_init` function
* The layout component determines the storage backend for the encoded type, adds a reference to the object for the corresponding backend in the metadata server and initialises the object attributes correspondingly (i.e. the operation table, etc)
* The ESD middleware front end receives a type object that can be written to the apposite backend, it then writes it and returns to the ESD Plugin

## General Considerations
* The described use case assumes that we pass an encoded HDF5 type to the ESD middleware, thus the ESD middleware will store the type in the original HDF5 serial format. Nevertheless, the ESD middleware is aware of the HDF5 serial format and will be able to reconstruct the original in memory representation if needed.

* The advantage of passing the encoded buffer to the ESD middleware is that we can avoid reconstructing the in memory representation of the datatype in the ESD Plugin (from the ESD Plugin we have no access to the original in memory representation of `H5T_t`) and then pass this to the ESD middleware which will serialise it using the ESD format. Since the ESD middleware understands the HDF5 serial format this step is unnecessary.

* Here we are assuming that objects (including variables, datatypes, dataspaces, etc) can be stored in different backends. Therefore, every object should have a list of relevant attributes that are initialised by the layout component basing on the storage backend chosen.

* The only reason for enforcing a ESD format on the datatype is not clear at this moment. If a better motivation for this becomes clear, e.g. performance, we can reconsider the current use case and modify it accordingly.
