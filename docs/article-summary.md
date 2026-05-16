# Article Summary

## Purpose

The article proposes a domain-based enterprise architecture diagnosis using TOGAF as a reference framework, without applying the full sequential ADM cycle. The study focuses on a Peruvian microfinance institution and links business, data, application, technology and governance domains.

## Methodological chain

The study follows seven connected stages:

1. AS-IS diagnosis by five TOGAF domains.
2. Architectural Criticality Index (ICA) using AHP weights.
3. Business Capability Map (BCM) as an integrating artifact.
4. Gap identification by domain.
5. Multidimensional Architectural Selection Instrument (IMSA).
6. TO-BE solution design for the selected gap.
7. Risk analysis based on NIST SP 800-30 and ISO/IEC 27005.

## Selected gap

The prioritized gap is the absence of Infrastructure as Code for critical microservice-based business processes. The selected gap reached an IMSA score of `4.35`.

## Critical processes referenced in the article

The article identifies four candidate microservices at a conceptual level:

| Conceptual service | Domain | ICA | Public description |
| --- | --- | ---: | --- |
| ClaAhorros - Solicitud de apertura | Savings | 4.83 | Supports account-opening request flow. |
| ClaCreditos - Evaluacion crediticia | Credit | 4.82 | Supports credit evaluation flow. |
| ClaCreditos - Desembolso crediticio | Credit | 4.55 | Supports loan disbursement flow. |
| ClaAhorros - Confirmacion de apertura | Savings | 4.16 | Complements account-opening confirmation flow. |

No source code, internal API behavior or entity-specific implementation detail is included in this repository.
