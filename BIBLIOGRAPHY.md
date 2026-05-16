# Bibliografía

## Marco Teórico y Arquitectura Empresarial

### Libros y Documentos Principales

**The Open Group. (2018).** *TOGAF® Version 9.2 - A Pocket Guide*. The Open Group Publishing.  
- **Referencia:** Framework de arquitectura empresarial utilizado como base metodológica
- **Aplicación:** Diagnóstico de 5 dominios arquitectónicos (negocio, datos, aplicaciones, tecnología, gobernanza)

**The Open Group. (2018).** *TOGAF® 9.2 - The Complete Guide - The Complete Edition*.  
- **Referencia:** Especificación completa del ADM (Architecture Development Method)
- **Aplicación:** Diagnóstico AS-IS sin aplicar ciclo completo secuencial

**Lankhorst, M. (2017).** *Enterprise Architecture at Work: Modelling, Communication, and Analysis* (4th ed.). Springer-Verlag.  
- **Referencia:** Fundamentos de visualización y modelado de arquitectura empresarial
- **Aplicación:** Representación de dominios arquitectónicos

---

## Metodologías de Decisión y Priorización

### Proceso Analítico Jerárquico (AHP)

**Saaty, T. L. (2008).** "Decision making with the analytic hierarchy process." *International Journal of Services Sciences*, 1(1), 83-98.  
- **Referencia:** Fundamentos matemáticos de AHP
- **Aplicación:** Cálculo de Índice de Criticidad Arquitectónica (ICA) con pesos por criterio

**Saaty, T. L. (1980).** *The Analytic Hierarchy Process: Planning, Priority Setting, Resource Allocation*. McGraw-Hill.  
- **Referencia:** Metodología original de 1980
- **Aplicación:** Estructura jerárquica de criterios de criticidad

**Forman, E. & Gass, S. (2001).** "The analytic hierarchy process—an exposition." *Operations Research*, 49(4), 469-486.  
- **Referencia:** Revisión académica de AHP
- **Aplicación:** Validación de pesos utilizados en ICA

**Ho, W. (2008).** "Integrated analytic hierarchy process and its applications - A literature review." *European Journal of Operational Research*, 186(1), 211-228.  
- **Referencia:** Estado del arte en aplicaciones de AHP
- **Aplicación:** Justificación de criterios ICA (impacto de negocio, frecuencia transaccional, exposición regulatoria)

---

## Seguridad y Gestión de Riesgos

### NIST Risk Management

**National Institute of Standards and Technology (NIST). (2012).** *NIST SP 800-30 Rev. 1: Guide for Conducting Risk Assessments*. U.S. Department of Commerce.  
- **URL:** https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-30r1.pdf
- **Referencia:** Marco de referencia para análisis de riesgos
- **Aplicación:** Evaluación de 8 riesgos arquitectónicos identificados

**National Institute of Standards and Technology (NIST). (2019).** *NIST Cybersecurity Framework Version 1.1*.  
- **Referencia:** Funciones de Identificar, Proteger, Detectar, Responder y Recuperar
- **Aplicación:** Alineación de controles de riesgo

### ISO/IEC 27000 Series

**International Organization for Standardization (ISO). (2022).** *ISO/IEC 27005:2022 - Information Security Risk Management*.  
- **Referencia:** Estándar internacional de gestión de riesgos de seguridad
- **Aplicación:** Metodología de análisis de riesgos complementaria a NIST

**ISO. (2022).** *ISO/IEC 27001:2022 - Information Security Management Systems - Requirements*.  
- **Referencia:** Sistema de gestión de seguridad de información
- **Aplicación:** Controles de seguridad para arquitectura propuesta

**ISO. (2013).** *ISO/IEC 27002:2013 - Code of Practice for Information Security Controls*.  
- **Referencia:** Catálogo de controles de seguridad
- **Aplicación:** Implementación de controles para riesgos identificados

---

## Microservicios e Infrastructure as Code

### Arquitectura de Microservicios

**Newman, S. (2021).** *Building Microservices: Designing Fine-Grained Systems* (2nd ed.). O'Reilly Media.  
- **Referencia:** Principios de diseño de arquitectura basada en microservicios
- **Aplicación:** Estructura de 4 servicios microfinancieros conceptuales

**Richardson, C. (2018).** *Microservices Patterns: With Examples in Java*. Manning Publications.  
- **Referencia:** Patrones de diseño y comunicación entre microservicios
- **Aplicación:** Modelo de interacción de servicios críticos

**Fowler, M. & Lewis, J. (2014).** "Microservices." *martinfowler.com*.  
- **Referencia:** Definición y características de arquitectura de microservicios
- **Aplicación:** Justificación de enfoque microservicios para procesos críticos

### Infrastructure as Code (IaC)

**Humble, J. & Farley, D. (2010).** *Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation*. Addison-Wesley.  
- **Referencia:** Principios de despliegue automatizado
- **Aplicación:** Justificación de reducción de tiempo de aprovisionamiento

**Morris, K. (2016).** *Infrastructure as Code: Managing Servers in the Cloud*. O'Reilly Media.  
- **Referencia:** Conceptos y prácticas de IaC
- **Aplicación:** Brecha seleccionada: ausencia de IaC con puntuación IMSA 4.35

**Humble, J., Molesky, J., & O'Reilly, B. (2010).** *Lean Enterprise: How High-Performance Organizations Innovate at Scale*. O'Reilly Media.  
- **Referencia:** Mejora de disponibilidad de servicio
- **Aplicación:** Métrica TO-BE: disponibilidad 99.9%

---

## Contenedores y Orquestación

### Kubernetes y EKS

**Burns, B. & Beda, K. (2019).** *Kubernetes Up and Running: Dive into the Future of Infrastructure* (2nd ed.). O'Reilly Media.  
- **Referencia:** Principios de orquestación de contenedores
- **Aplicación:** Componente Amazon EKS en arquitectura TO-BE

**Wuestkamp, T. (2023).** *Kubernetes and Docker: The Complete Guide*. Udemy.  
- **Referencia:** Docker como complemento de Kubernetes
- **Aplicación:** Containerización de microservicios conceptuales

**Amazon Web Services. (2023).** *Amazon EKS Best Practices Guide*.  
- **URL:** https://aws.github.io/aws-eks-best-practices/
- **Referencia:** Guía de mejores prácticas en EKS
- **Aplicación:** Configuración segura de cluster Kubernetes en AWS

---

## Terraform e Infraestructura en AWS

### Terraform como IaC

**Bhatnagar, V. (2020).** *Terraform in Action*. Manning Publications.  
- **Referencia:** Prácticas de Terraform para infraestructura declarativa
- **Aplicación:** Implementación de módulos Terraform en repositorio

**Poulton, N. (2023).** *Terraform Quick Start Guide: Write Infrastructure as Code in Terraform 1.0+*.  
- **Referencia:** Guía rápida de Terraform
- **Aplicación:** Módulos de red, EKS, API Gateway, observabilidad, seguridad

**HashiCorp. (2023).** *Terraform Official Documentation*.  
- **URL:** https://www.terraform.io/docs/
- **Referencia:** Documentación oficial de Terraform
- **Aplicación:** Validación y formato de módulos (`terraform fmt`, `terraform validate`)

### Amazon Web Services (AWS)

**Wittig, A. & Wittig, M. (2023).** *Amazon Web Services in Action* (3rd ed.). Manning Publications.  
- **Referencia:** Servicios AWS y arquitectura cloud
- **Aplicación:** Componentes: VPC, EKS, API Gateway, CloudWatch, CodePipeline

**Amazon Web Services. (2023).** *AWS Well-Architected Framework*.  
- **URL:** https://aws.amazon.com/architecture/well-architected/
- **Referencia:** Pilares de excelencia arquitectónica (operational excellence, security, reliability, performance, cost optimization)
- **Aplicación:** Alineación de arquitectura propuesta

---

## Microfinanzas y Contexto Institucional

### Microfinanzas en Perú

**Superintendencia de Banca, Seguros y AFP (SBS). (2023).** *Regulaciones para Instituciones Microfinancieras*.  
- **Referencia:** Marco regulatorio peruano
- **Aplicación:** Contexto regulatorio de la institución caso de estudio

**Consultative Group to Assist the Poor (CGAP). (2021).** *Digital Financial Inclusion: Evidence from Latin America*.  
- **Referencia:** Transformación digital en instituciones microfinancieras
- **Aplicación:** Justificación de transformación digital

**Gulli, H. & Berger, M. (1999).** *Microfinance and Poverty: Quasi-Experimental Evidence from Bosnia and Herzegovina*. World Bank.  
- **Referencia:** Impacto de microfinanzas en economía
- **Aplicación:** Contexto de criticidad de procesos microfinancieros

---

## Indicadores y Métricas

### Disponibilidad y SLA

**Parasuraman, A., Zeithaml, V. A., & Berry, L. L. (1988).** "SERVQUAL: A multiple-item scale for measuring consumer perceptions of service quality." *Journal of Retailing*, 64(1), 12-40.  
- **Referencia:** Medición de calidad de servicio
- **Aplicación:** Justificación de disponibilidad objetivo 99.9%

**Larson, K. (2012).** *SLA at Scale: Google's Approach to Service Level Agreements*. Google.  
- **Referencia:** Service Level Agreements en producción
- **Aplicación:** Métrica TO-BE: disponibilidad 99.9% para servicios críticos

---

## Validación y Métodos de Investigación

### Metodología de Investigación

**Creswell, J. W. & Creswell, J. D. (2017).** *Research Design: Qualitative, Quantitative, and Mixed Methods Approaches* (5th ed.). Sage Publications.  
- **Referencia:** Enfoques de investigación
- **Aplicación:** Diseño del estudio de caso académico

**Yin, R. K. (2017).** *Case Study Research and Applications: Design and Methods* (6th ed.). Sage Publications.  
- **Referencia:** Metodología de estudios de caso
- **Aplicación:** Validez metodológica del caso Caja Los Andes

### Evaluación de Expertos

**Linstone, H. A. & Turoff, M. (2002).** *The Delphi Method: Techniques and Applications*. Addison-Wesley.  
- **Referencia:** Método Delphi para consenso de expertos
- **Aplicación:** Validación por 3 expertos independientes

---

## Gobernanza y Política de Datos

### Gobernanza de Datos

**Seiner, J. S. (2014).** *Non-Invasive Data Governance: Building Trust across the Organization*. Technics Publications.  
- **Referencia:** Gobernanza sin disruption operativa
- **Aplicación:** Dominio de gobernanza identificado

**DAMA International. (2017).** *DMBOK 2: The Data Management Body of Knowledge* (2nd ed.).  
- **Referencia:** Framework de gestión de datos
- **Aplicación:** Análisis del dominio de datos

### Seguridad y Anonimización

**Narayanan, A. & Felten, E. W. (2014).** "No silver bullet: De-identification still doesn't work." *arXiv preprint arXiv:1404.5801*.  
- **Referencia:** Desafíos de anonimización
- **Aplicación:** Justificación de directrices de anonimización en repositorio

**Sweeney, L. (2002).** "k-Anonymity: A model for protecting privacy." *International Journal of Uncertainty, Fuzziness and Knowledge-Based Systems*, 10(5), 557-570.  
- **Referencia:** Técnicas de k-anonimidad
- **Aplicación:** Protección de identidad institucional

---

## Herramientas y Tecnologías

### Git y Control de Versiones

**Chacon, S. & Straub, B. (2014).** *Pro Git* (2nd ed.). Apress.  
- **Referencia:** Control de versiones con Git
- **Aplicación:** Gestión de repositorio público

### Mermaid y Diagramación

**Mermaid.js Official Documentation. (2023).**  
- **URL:** https://mermaid.js.org/
- **Referencia:** Diagrama declarativo en markdown
- **Aplicación:** Diagrama de arquitectura de referencia

---

## Documentación Académica

### Mejores Prácticas en Documentación

**Strahman, K. (2020).** *The Developer's Guide to Documentation*. Swagger.io.  
- **Referencia:** Documentación técnica efectiva
- **Aplicación:** Estructura y claridad del repositorio

**McDowell, G. L. (2015).** *Cracking the Coding Interview* (6th ed.). CareerCup.  
- **Referencia:** Documentación de problemas complejos
- **Aplicación:** Claridad metodológica del estudio

---

## Referencias Complementarias

### Artículos Relacionados

**Zimmermann, A., Schmidt, R., & Sandkuhl, K. (2015).** "Toward an Enterprise Architecture for Digital Transformation." *2015 IEEE International Technology Management Council (ITMC)*, 1-8.  
- **Referencia:** Transformación digital en empresas
- **Aplicación:** Contexto de transformación en microfinanzas

**Buckl, S., Dierl, H., Ernst, A., et al. (2009).** "Using enterprise architecture management for SOA planning." *Proceedings of the 2009 IEEE International Conference on Services Computing*, 433-440.  
- **Referencia:** Alineación con SOA (Service-Oriented Architecture)
- **Aplicación:** Transición a arquitectura basada en servicios

---

## Recursos Online Consultados

| Recurso | URL | Aplicación |
|---------|-----|-----------|
| The Open Group | https://www.opengroup.org/togaf | Framework TOGAF |
| NIST Cybersecurity | https://www.nist.gov/cyberframework | Estándares de seguridad |
| AWS Documentation | https://docs.aws.amazon.com/ | Servicios AWS |
| Terraform Registry | https://registry.terraform.io/ | Módulos y ejemplos |
| HashiCorp Learn | https://learn.hashicorp.com/ | Tutoriales de Terraform |
| ISO Standards | https://www.iso.org/ | Estándares internacionales |
| SBS Perú | https://www.sbs.gob.pe/ | Regulación microfinanciera |

---

## Cómo Citar esta Bibliografía

### Formato APA

Para referenciar la bibliografía completa de este proyecto:

```
Autor(es). (2026). TOGAF Microfinance Digital Transformation: 
Bibliografía de referencia. Recuperado de 
[URL del repositorio]/BIBLIOGRAPHY.md
```

### En Trabajos Derivados

Si utiliza fuentes de esta bibliografía:
1. Cite la fuente original (no esta compilación)
2. Incluya año y autor de la publicación original
3. Proporcione atribución al repositorio como referencia adicional

---

## Actualizaciones Futuras

Esta bibliografía se actualiza regularmente para incluir:
- ✓ Nuevas versiones de estándares (NIST, ISO, TOGAF)
- ✓ Avances en microservicios y cloud computing
- ✓ Innovaciones en microfinanzas y fintech
- ✓ Mejoras en IaC y DevOps

**Última actualización:** Mayo 2026  
**Próxima revisión:** Cuando se publique TOGAF 10.0 o cambios significativos en estándares
