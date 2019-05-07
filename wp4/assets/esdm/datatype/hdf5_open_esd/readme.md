# Use Case
Datatype open from a HDF5 application interfacing with the ESD through the ESD Plugin and the datatype is stored using the ESD serial format

## Involved Actors
* HDF5 VOL
* ESD Plugin
* ESD
* ESD Datatype
* ESD Layout
* Metadata Backend
* Storage Backend

## General Description

## General Considerations
* One problem when opening a datatype stored in the ESD serial format from a HDF5 application is that the ESD Plugin will need to get a serial representation of the datatype. The datatype ID (i.e. `hid_t`) will then be obtained using `H5Tdecode`. Obviously, if the serial format is not hdf5 H5Tdecode cannot work. Thus, we still need to convert the ESD serial format into the hdf5 serial format, which adds two additional steps: a) decode the datatype and encode it again in the hdf5 format.
