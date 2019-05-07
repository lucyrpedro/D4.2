Reports for Task4.3

Task 4.3 - New methods of exploiting tape [Lead: STFC; Participant: DKRZ] Joint research activity

This directory is used for reports associated with ESiWACE task 4.3,
including the final deliverable, D4.4.  It is intended to use it also
with interim reports, and with a shared bibliography.



Text from DoW:

High-end climate computations are likely to generate such large
volumes of data that not only will disk performance and cost be
limiting, but the physical capacity in machine rooms, too. Leaving
aside completely new storage media such as holographic storage, one
possible way forward is to make better use of tapes. Traditionally,
the climate community has used tape primarily for archive, that is,
for backup, and recovery of small amounts of data from very big
volumes. Sites such as ECMWF and the Met Office have developed bespoke
environments (MARS and MASS respectively) which by controlling data
and scientific metadata structures, and introducing carefully
configured servers and storage cache, have extended the “write once,
read infrequently” mode to allow higher performance environments, but
these require large teams, and are still limited by serial
processes. Similarly, at STFC, the JASMIN32 interface to tape
currently utilises the CASTOR33 tape system designed by CERN. By
contrast, some applications of HPSS have used RAIT concept (Redundant
Array of Independent Tapes) and noting the complexity of tape
management at scale, proposed some sophisticated strategies of using
tapes in parallel. We propose to first model and simulate, then build,
a prototype open source tool that offers configurable flexibility
between high performance and increase in capacity vs. resilience. In
contrast to existing approaches such as in HPSS, our approach can be
deployed in the typical scenario where a library is equipped with
different tape generations and technology. We would expect to evaluate
the tape performance simulations in comparison to existing strategies
in the climate community, and deploy the prototype tape library at
STFC (M4.5). The system would be designed for insertion into existing
workflows at other centres, but we expect an operational setting
demonstration is mandatory to demonstrate its benefit. STFC focuses on
the implementation and deployment whereas DKRZ leads the core
modelling and simulation. The outcome of this will be documented in
[D4.4].

D4.4 Final report on alternative tape usage. (STFC, R, PU, PM36).
