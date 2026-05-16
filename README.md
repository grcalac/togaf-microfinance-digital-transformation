# TOGAF Microfinance Digital Transformation
## Diseño de arquitectura empresarial basada en TOGAF por dominios para la transformación digital de servicios microfinancieros: caso Caja Los Andes

---

## 📋 Propósito

Este repositorio contiene el trabajo de investigación y las **evidencias que validan** un estudio de diagnóstico de arquitectura empresarial aplicado a una institución microfinanciera peruana. El estudio utiliza **TOGAF como marco de referencia** para diagnosticar cinco dominios arquitectónicos críticos (negocio, datos, aplicaciones, tecnología y gobernanza), sin aplicar el ciclo completo y secuencial ADM.

### Objetivo Principal
Identificar y priorizar brechas arquitectónicas mediante una metodología estructurada de 7 etapas, culminando en el diseño conceptual de una solución de **Infrastructure as Code para microservicios críticos**.

---

## � Artículo Publicado y Evidencias de Validación

### Artículo Base
El estudio está publicado en: **[Articulo.pdf](Articulo.pdf)**

Este repositorio contiene **evidencias replicables y documentadas** que validan cada una de las afirmaciones principales del artículo:

| Componente del Artículo | Evidencia en el Repositorio | Ubicación |
|----------------------|---------------------------|----------|
| **Secciones 3.1-3.4** Diagnóstico AS-IS por 5 dominios TOGAF | Summaries públicos por dominio | [evidences/togaf-domains/](evidences/togaf-domains/) |
| **Tabla 1** Criterios ICA y pesos AHP | Matriz de trazabilidad con pesos | [evidences/togaf-domains/business.md](evidences/togaf-domains/business.md) |
| **Tabla 2** Portafolio de aplicaciones | Categorías genéricas de aplicaciones | [evidences/togaf-domains/applications.md](evidences/togaf-domains/applications.md) |
| **Tabla 3** Entidades de datos | Vista genérica de propiedad de datos | [evidences/togaf-domains/data.md](evidences/togaf-domains/data.md) |
| **Tabla 4** Brechas identificadas | Summaries públicos de gaps | [architecture/as-is-summary.md](architecture/as-is-summary.md) |
| **Tablas 5a-5b** Escala IMSA y priorización | Brecha seleccionada con puntuación | [evidences/traceability-matrix.md](evidences/traceability-matrix.md) |
| **Figura 6 + Sección 3.5** Arquitectura TO-BE con IaC | Arquitectura de referencia completa | [architecture/to-be-reference-architecture.md](architecture/to-be-reference-architecture.md) |
| **Tabla 6** Indicadores AS-IS/TO-BE | Métricas de mejora por dominio | [architecture/to-be-reference-architecture.md](architecture/to-be-reference-architecture.md) |
| **Tabla 7** Análisis de riesgos NIST/ISO | Registro de riesgos con controles | [risk/risk-register.md](risk/risk-register.md) |

### Matriz de Trazabilidad Completa
Para validación académica detallada, consulte:
👉 **[evidences/traceability-matrix.md](evidences/traceability-matrix.md)** - Mapeo exacto entre artículo y evidencias

---

## �🔄 Cadena Metodológica

El estudio sigue un proceso integrado de siete etapas conectadas:

| Etapa | Descripción | Artefacto Principal |
|-------|-------------|-------------------|
| 1️⃣ Diagnóstico AS-IS | Evaluación actual por cinco dominios TOGAF | [Resumen AS-IS](architecture/as-is-summary.md) |
| 2️⃣ Índice de Criticidad | Cálculo de pesos mediante Proceso Analítico Jerárquico (AHP) | [Matriz de Trazabilidad](evidences/traceability-matrix.md) |
| 3️⃣ Mapa de Capacidades | Integración de dominios mediante BCM | [Catálogo de Capacidades](architecture/microservices-catalog.md) |
| 4️⃣ Identificación de Brechas | Análisis de gaps por dominio | [Dominios TOGAF](evidences/togaf-domains/) |
| 5️⃣ Selección Multidimensional | Instrumento de Selección Arquitectónica (IMSA) | [Metodología](docs/methodology.md) |
| 6️⃣ Diseño TO-BE | Solución de arquitectura de referencia | [Arquitectura de Referencia](architecture/to-be-reference-architecture.md) |
| 7️⃣ Análisis de Riesgo | Evaluación basada en NIST SP 800-30 e ISO/IEC 27005 | [Registro de Riesgos](risk/risk-register.md) |

---

## 🎯 Brecha Seleccionada

**Ausencia de Infrastructure as Code (IaC) para procesos microservicios críticos**

- **Puntuación IMSA:** 4.35
- **Solución:** Implementación de módulos Terraform para orquestación de microservicios
- **Ubicación:** [IaC Terraform](iac/terraform/)

---

## 🔧 Procesos Microfinancieros Críticos Identificados

El artículo identifica cuatro servicios microfinancieros conceptuales como candidatos prioritarios:

| Servicio Conceptual | Dominio | Índice de Criticidad (ICA) | Descripción |
|-------------------|---------|---------------------------|-------------|
| **ClaAhorros** - Solicitud de apertura | Ahorros | 4.83 | Flujo de solicitud de apertura de cuenta |
| **ClaCreditos** - Evaluación crediticia | Créditos | 4.82 | Flujo de evaluación crediticia |
| **ClaCreditos** - Desembolso crediticio | Créditos | 4.55 | Flujo de desembolso de préstamos |
| **ClaAhorros** - Confirmación de apertura | Ahorros | 4.16 | Confirmación de apertura de cuenta |

---

## 📁 Estructura del Repositorio

```
├── 📖 docs/                          # Documentación del estudio
│   ├── article-summary.md            # Resumen ejecutivo del artículo
│   ├── methodology.md                # Detalle de la metodología aplicada
│   └── publication-scope.md          # Alcance de publicación y limitaciones
│
├── 🏗️  architecture/                 # Diseños de arquitectura
│   ├── as-is-summary.md              # Diagnóstico del estado actual
│   ├── to-be-reference-architecture.md # Arquitectura de referencia propuesta
│   ├── microservices-catalog.md      # Catálogo de microservicios
│   └── diagrams/                     # Diagramas de arquitectura (Mermaid)
│
├── ✅ evidences/                     # Evidencias que validan el artículo
│   ├── evidence-catalog.md           # Catálogo completo de evidencias
│   ├── traceability-matrix.md        # Matriz de trazabilidad metodológica
│   └── togaf-domains/                # Análisis por dominio TOGAF
│       ├── business.md               # Dominio de Negocio
│       ├── data.md                   # Dominio de Datos
│       ├── applications.md           # Dominio de Aplicaciones
│       ├── technology.md             # Dominio de Tecnología
│       └── governance.md             # Dominio de Gobernanza
│
├── 🏛️  governance/                   # Políticas de gobernanza
│   ├── roles-and-responsibilities.md # Roles y responsabilidades
│   ├── publication-checklist.md      # Control de publicación
│   ├── anonymization-guidelines.md   # Directrices de anonimización
│   └── ethical-evidence-access-policy.md # Política de acceso ético
│
├── 🔒 security/                      # Políticas de seguridad
│   ├── public-repo-security-policy.md    # Política de seguridad pública
│   ├── secret-scanning-checklist.md     # Control de secretos
│   └── sensitive-information-redaction.md # Redacción de información sensible
│
├── ⚠️  risk/                         # Análisis de riesgos
│   └── risk-register.md              # Registro de riesgos (NIST/ISO)
│
└── 🚀 iac/                           # Infrastructure as Code
    └── terraform/                    # Módulos de Terraform
        ├── examples/                 # Ejemplos de uso
        └── modules/                  # Módulos reutilizables
            ├── network/              # Configuración de red
            ├── eks/                  # Amazon EKS para orquestación
            ├── microservices-reference/ # Referencia de microservicios
            ├── api-gateway/          # API Gateway
            ├── security/             # Configuraciones de seguridad
            ├── observability/        # Monitoreo y observabilidad
            └── vpn-placeholder/      # Conectividad VPN
```

---

## 🔍 Guía de Navegación

### ⚡ Inicio Rápido (5 minutos)

1. **Lea el título y propósito** (arriba)
2. **Consulte el artículo PDF:** [Articulo.pdf](Articulo.pdf)
3. **Explore la tabla de Artículo + Evidencias** (sección "📄 Artículo Publicado")
4. **Verifique la Matriz de Trazabilidad:** [evidences/traceability-matrix.md](evidences/traceability-matrix.md)

### 🎓 Para Validar el Artículo (Proceso de Verificación)
**Siga estos pasos para verificar que el repositorio valida todas las afirmaciones del artículo:**

**Paso 1: Lea el artículo**
- Acceda a [Articulo.pdf](Articulo.pdf)

**Paso 2: Localice cada tabla/figura en el repositorio**
- Tabla 1 (Criterios ICA): [evidences/togaf-domains/business.md](evidences/togaf-domains/business.md#ica-criteria)
- Tabla 2 (Portafolio apps): [evidences/togaf-domains/applications.md](evidences/togaf-domains/applications.md)
- Tabla 3 (Entidades): [evidences/togaf-domains/data.md](evidences/togaf-domains/data.md)
- Tabla 4 (Brechas): [architecture/as-is-summary.md](architecture/as-is-summary.md)
- Tabla 5a-5b (IMSA): [evidences/traceability-matrix.md](evidences/traceability-matrix.md)
- Tabla 6 (Indicadores): [architecture/to-be-reference-architecture.md](architecture/to-be-reference-architecture.md)
- Tabla 7 (Riesgos): [risk/risk-register.md](risk/risk-register.md)

**Paso 3: Consulte la matriz de trazabilidad**
- [evidences/traceability-matrix.md](evidences/traceability-matrix.md) - Mapeo completo

**Paso 4: Revise la bibliografía**
- [BIBLIOGRAPHY.md](BIBLIOGRAPHY.md) - Todas las referencias académicas utilizadas

**Documentación complementaria:**
- [docs/article-summary.md](docs/article-summary.md) - Resumen ejecutivo
- [docs/methodology.md](docs/methodology.md) - Detalles técnicos
- [docs/publication-scope.md](docs/publication-scope.md) - Alcance y limitaciones

### Para Implementar la Solución
- **Arquitectura:** Consulte [to-be-reference-architecture.md](architecture/to-be-reference-architecture.md)
- **Infraestructura:** Use los módulos Terraform en [iac/terraform/](iac/terraform/)
- **Ejemplos:** Vea implementaciones en [iac/terraform/examples/](iac/terraform/examples/)

### Para Entender los Dominios
- [Dominio de Negocio](evidences/togaf-domains/business.md)
- [Dominio de Datos](evidences/togaf-domains/data.md)
- [Dominio de Aplicaciones](evidences/togaf-domains/applications.md)
- [Dominio de Tecnología](evidences/togaf-domains/technology.md)
- [Dominio de Gobernanza](evidences/togaf-domains/governance.md)

---

## 📊 Matriz de Trazabilidad

Este repositorio implementa una **trazabilidad completa** entre:
- ✓ Hallazgos del artículo
- ✓ Evidencias documentadas
- ✓ Análisis por dominio TOGAF
- ✓ Implementación en Terraform
- ✓ Políticas de gobernanza y seguridad

Consulte [evidences/traceability-matrix.md](evidences/traceability-matrix.md) para detalles.

---

## � Indicadores de Mejora (AS-IS → TO-BE)

La brecha seleccionada propone mejoras en estos indicadores clave:

| Dominio | Indicador | Estado Actual | Meta TO-BE | Mejora |
|---------|-----------|---------------|-----------|---------|
| **Tecnología** | Tiempo de aprovisionamiento | ~3 días | <30 minutos | **-99%** |
| **Tecnología** | Disponibilidad de servicio crítico | ~80% | ≥99.9% | **+24.9%** |
| **Tecnología** | Cobertura de IaC | ~30% | 100% | **+70 p.p.** |
| **Aplicaciones** | Despliegue de servicio crítico | Sin estándar | Con concepto | ✓ Nuevo |
| **Gobernanza** | Revisión de arquitectura | Sin evidencia formal | 100% previo | ✓ Formal |
| **Seguridad** | Cobertura OWASP | Parcial | ≥80% | **Reforzada** |

---

## ⚠️ Riesgos Públicos Identificados

El análisis identifica 8 riesgos clave con sus controles públicos:

| ID | Riesgo | Nivel | Control Público |
|-----|--------|-------|-----------------|
| R1 | Brecha de habilidades en IaC/orquestación | Alto | Plan de formación y adopción guiada |
| R2 | Exposición de datos sensibles | Alto | Encriptación, mínimo privilegio y auditoría centralizada |
| R3 | Incumplimiento regulatorio | Alto | Límites de red privada y validación de despliegues |
| R4 | Degradación de servicio en transición | Alto | Despliegue canario, rollback y umbrales monitoreados |
| R5 | Acoplamiento residual | Medio | Contratos versionados y validación en pipeline |
| R6 | Latencia sobre conectividad privada | Medio | Monitoreo de latencia y priorización de tráfico |
| R7 | Desviación de configuración | Medio | Detección de drift y restricción de cambios manuales |
| R8 | Sobrecostos | Bajo | Alertas presupuestarias y políticas de autoscaling |

Consulte [risk/risk-register.md](risk/risk-register.md) para detalles completos.

---

## ✅ Catálogo de Evidencias Públicas

El repositorio documenta **9 categorías de evidencia** derivadas del artículo, todas seguras para publicación:

| ID | Evidencia | Fuente en Artículo | Ubicación en Repo |
|----|-----------|-------------------|------------------|
| EV-001 | Diagnóstico TOGAF por dominio | Secciones 3.1-3.4 | [evidences/togaf-domains/](evidences/togaf-domains/) |
| EV-002 | Criterios ICA y pesos AHP | Tabla 1 | [evidences/traceability-matrix.md](evidences/traceability-matrix.md) |
| EV-003 | Portafolio de aplicaciones | Tabla 2 | [architecture/microservices-catalog.md](architecture/microservices-catalog.md) |
| EV-004 | Entidades de datos | Tabla 3 | [evidences/togaf-domains/data.md](evidences/togaf-domains/data.md) |
| EV-005 | Brechas identificadas | Tabla 4 | [architecture/as-is-summary.md](architecture/as-is-summary.md) |
| EV-006 | Escala IMSA y puntuación | Tablas 5a-5b | [evidences/traceability-matrix.md](evidences/traceability-matrix.md) |
| EV-007 | Arquitectura TO-BE con IaC | Figura 6 + Sección 3.5 | [architecture/to-be-reference-architecture.md](architecture/to-be-reference-architecture.md) |
| EV-008 | Indicadores AS-IS/TO-BE | Tabla 6 | [architecture/to-be-reference-architecture.md](architecture/to-be-reference-architecture.md) |
| EV-009 | Análisis de riesgos | Tabla 7 | [risk/risk-register.md](risk/risk-register.md) |

Consulte [evidences/evidence-catalog.md](evidences/evidence-catalog.md) para la descripción completa del catálogo.

---

## 🧪 Validación y Reproducibilidad

### A nivel metodológico
El repositorio es **reproducible a nivel metodológico**. Todos los artefactos documentan:
- Criterios de diagnóstico por dominio
- Cálculos de ponderación (AHP)
- Criterios de priorización (IMSA)
- Análisis de riesgos según NIST SP 800-30 e ISO/IEC 27005

### Validación por Expertos
La metodología fue calificada por **3 expertos independientes**. Consulte:
- **Archivo:** `Evidencia de calificacion de los instrumentos por 3 expertos.xlsx`

### Instrucciones de Validación Terraform
El código Terraform incluido es **académico y referencial**, no para producción:

```powershell
# Validar formato
cd iac/terraform
terraform fmt -recursive

# Validar sintaxis (sin backend configurado)
terraform validate
```

⚠️ **NO ejecute `terraform apply` desde este repositorio.**

---

## 👥 Estructura de Gobernanza

### Roles de Revisión
El repositorio define los siguientes roles conceptuales:

| Rol | Responsabilidad |
|-----|-----------------|
| **Autor del Artículo** | Mantiene consistencia metodológica con el artículo |
| **Curador de Evidencias** | Asegura que las evidencias sean públicas y trazables |
| **Revisor de Arquitectura** | Verifica precisión y seguridad en la divulgación |
| **Revisor de Seguridad** | Detecta secretos y riesgos de exposición |
| **Revisor Académico** | Verifica transparencia metodológica |

Consulte [governance/roles-and-responsibilities.md](governance/roles-and-responsibilities.md).

### Acceso Público
✓ **Todo el contenido es público.** No hay carpetas privadas, ramas restringidas ni archivos con acceso limitado.

---

## 🚀 Componentes de Arquitectura TO-BE

La arquitectura de referencia propuesta incluye:

| Componente | Rol Público | Módulo Terraform |
|-----------|------------|-----------------|
| **Amazon EKS** | Orquestación de contenedores | [modules/eks/](iac/terraform/modules/eks/) |
| **API Gateway** | Punto de entrada unificado | [modules/api-gateway/](iac/terraform/modules/api-gateway/) |
| **Elastic Load Balancing** | Distribución de tráfico | [modules/network/](iac/terraform/modules/network/) |
| **Terraform** | Definición declarativa de infraestructura | Todos los módulos |
| **CloudWatch** | Logs, métricas y alarmas | [modules/observability/](iac/terraform/modules/observability/) |
| **VPN Placeholder** | Conectividad conceptual | [modules/vpn-placeholder/](iac/terraform/modules/vpn-placeholder/) |
| **Seguridad** | Políticas de acceso | [modules/security/](iac/terraform/modules/security/) |

**Limitación importante:** El código Terraform es deliberadamente incompleto desde perspectiva productiva, usa nombres placeholder y omite configuraciones de seguridad específicas.

---

## �📋 Consideraciones Importantes

⚠️ **Confidencialidad:**
- No se incluye código fuente de sistemas productivos
- No se incluyen detalles de comportamiento de APIs internas
- No se incluyen detalles de implementación específica de entidades
- Los nombres de servicios son referencias conceptuales, no productivos

✅ **Conformidad:**
- Cumple con [política de seguridad pública](security/public-repo-security-policy.md)
- Aplicadas [directrices de anonimización](governance/anonymization-guidelines.md)
- Validado según [política de acceso ético a evidencias](governance/ethical-evidence-access-policy.md)
- Verificación de secretos mediante [checklist](security/secret-scanning-checklist.md)

---

## 🔗 Cómo Este Repositorio Valida el Artículo Publicado

El repositorio implementa una **cadena de validación completa** que conecta cada afirmación del artículo PDF con evidencias documentadas y referencias bibliográficas:

---

### 1️⃣ Diagnóstico AS-IS por Dominios (Secciones 3.1-3.4 del Artículo)
**Afirmación en el artículo:** Se realizó un diagnóstico sistemático de 5 dominios TOGAF  
**Referencias bibliográficas:** 
- The Open Group TOGAF 9.2 (2018) - Framework principal
- Lankhorst (2017) - Modelado de dominios arquitectónicos

**Evidencia en el repo:**
- [evidences/togaf-domains/business.md](evidences/togaf-domains/business.md) - Dominio de negocio con criterios ICA y procesos críticos
- [evidences/togaf-domains/data.md](evidences/togaf-domains/data.md) - Gestión de datos
- [evidences/togaf-domains/applications.md](evidences/togaf-domains/applications.md) - Portafolio de aplicaciones
- [evidences/togaf-domains/technology.md](evidences/togaf-domains/technology.md) - Infraestructura actual
- [evidences/togaf-domains/governance.md](evidences/togaf-domains/governance.md) - Gobernanza y controles

**Cómo validar:** Lea [architecture/as-is-summary.md](architecture/as-is-summary.md) que resume el estado actual por dominio

---

### 2️⃣ Índice de Criticidad Arquitectónica - ICA (Tabla 1 del Artículo)
**Afirmación en el artículo:** Se aplicó AHP para calcular pesos de criticidad  
**Referencias bibliográficas:**
- Saaty (2008) - Analytic Hierarchy Process  
- Ho (2008) - Aplicaciones e integraciones de AHP
- Forman & Gass (2001) - Revisión académica de AHP

**Evidencia en el repo:**
- Criterios de peso: [evidences/togaf-domains/business.md](evidences/togaf-domains/business.md#ica-criteria)
  - Business impact: 0.59
  - Transactional frequency: 0.26
  - Regulatory exposure: 0.15
- Procesos evaluados: [evidences/togaf-domains/business.md](evidences/togaf-domains/business.md#critical-processes)

**Cómo validar:** Verifique que los pesos sumen 1.0 (0.59 + 0.26 + 0.15 = 1.00) ✓

---

### 3️⃣ Procesos Microfinancieros Críticos (Tabla 2 del Artículo)
**Afirmación en el artículo:** Se identificaron 4 procesos microfinancieros críticos  
**Referencias bibliográficas:**
- SBS Perú (2023) - Regulaciones para instituciones microfinancieras
- CGAP (2021) - Transformación digital en microfinanzas

**Evidencia en el repo:**
- ClaAhorros - Solicitud de apertura: ICA 4.83 → [architecture/to-be-reference-architecture.md](architecture/to-be-reference-architecture.md)
- ClaCreditos - Evaluación crediticia: ICA 4.82
- ClaCreditos - Desembolso crediticio: ICA 4.55
- ClaAhorros - Confirmación de apertura: ICA 4.16

**Cómo validar:** Verifique en [evidences/togaf-domains/business.md](evidences/togaf-domains/business.md) que estos 4 procesos están listados con sus puntuaciones ICA

---

### 4️⃣ Brechas Identificadas por Dominio (Tabla 3 del Artículo)
**Afirmación en el artículo:** Se analizaron gaps en cada dominio  
**Referencias bibliográficas:**
- Zimmerann et al. (2015) - Enterprise Architecture for Digital Transformation

**Evidencia en el repo:**
- **Negocio:** Falta de medición sistemática de ciclo-tiempo
- **Datos:** Necesidad de mejor trazabilidad de acceso
- **Aplicaciones:** Riesgo de acoplamiento heterogéneo
- **Tecnología:** Cobertura limitada de IaC (~30%)
- **Gobernanza:** Falta de revisión formal

**Cómo validar:** Lea [architecture/as-is-summary.md](architecture/as-is-summary.md) que resumen los gaps por dominio

---

### 5️⃣ Brecha Seleccionada - IMSA (Tabla 4 del Artículo)
**Afirmación en el artículo:** Se utilizó IMSA para priorizar gaps y se seleccionó "IaC para microservicios"  
**Referencias bibliográficas:**
- Morris (2016) - Infrastructure as Code
- Newman (2021) - Building Microservices

**Evidencia en el repo:**
- Brecha: **Ausencia de Infrastructure as Code para procesos críticos**
- Puntuación IMSA: **4.35**
- Ubicación: [evidences/traceability-matrix.md](evidences/traceability-matrix.md)

**Cómo validar:** Consulte [architecture/as-is-summary.md](architecture/as-is-summary.md#selected-gap) que confirma la puntuación 4.35

---

### 6️⃣ Arquitectura TO-BE con IaC (Figura 6 + Sección 3.5 del Artículo)
**Afirmación en el artículo:** Se diseñó arquitectura de referencia basada en EKS, API Gateway y CloudWatch  
**Referencias bibliográficas:**
- Burns & Beda (2019) - Kubernetes Up and Running
- Wuestkamp (2023) - Kubernetes and Docker
- AWS EKS Best Practices Guide (2023)
- Bhatnagar (2020) - Terraform in Action
- HashiCorp Terraform Documentation (2023)

**Evidencia en el repo:**
- Componentes descritos: [architecture/to-be-reference-architecture.md](architecture/to-be-reference-architecture.md)
- Módulos Terraform: [iac/terraform/modules/](iac/terraform/modules/)
  - [modules/eks/](iac/terraform/modules/eks/) - Orquestación de contenedores
  - [modules/api-gateway/](iac/terraform/modules/api-gateway/) - Entrada unificada
  - [modules/observability/](iac/terraform/modules/observability/) - CloudWatch
- Diagrama Mermaid: [architecture/diagrams/reference-architecture.mmd](architecture/diagrams/reference-architecture.mmd)

**Cómo validar:** Revise que cada módulo tiene `main.tf`, `variables.tf` y `outputs.tf`

---

### 7️⃣ Indicadores de Mejora AS-IS → TO-BE (Tabla 5 del Artículo)
**Afirmación en el artículo:** Se definieron 6 indicadores de mejora esperada  
**Referencias bibliográficas:**
- Humble & Farley (2010) - Continuous Delivery (tiempo de despliegue)
- Larson (2012) - Google's SLA Approach (disponibilidad 99.9%)
- Parasuraman et al. (1988) - SERVQUAL (calidad de servicio)

**Evidencia en el repo:**
- Provisioning time: 3 días → <30 minutos
- Service availability: 80% → 99.9%
- IaC coverage: 30% → 100%
- Deployment standard: No formal → Conceptual
- Governance review: No formal → 100%
- OWASP coverage: Partial → ≥80%

**Cómo validar:** Verifique en [architecture/to-be-reference-architecture.md](architecture/to-be-reference-architecture.md#target-indicators) la tabla "Target indicators"

---

### 8️⃣ Análisis de Riesgos NIST/ISO (Tabla 6 del Artículo)
**Afirmación en el artículo:** Se analizaron 8 riesgos según NIST SP 800-30 e ISO/IEC 27005  
**Referencias bibliográficas:**
- NIST (2012) - SP 800-30 Rev. 1: Guide for Conducting Risk Assessments
- ISO (2022) - ISO/IEC 27005:2022 Information Security Risk Management
- ISO (2022) - ISO/IEC 27001:2022 Information Security Management Systems
- ISO (2013) - ISO/IEC 27002:2013 Code of Practice

**Evidencia en el repo:**
- R1-R8 documentados con nivel, descripción y control público
- Ubicación: [risk/risk-register.md](risk/risk-register.md)

**Cómo validar:** Verifique que aparecen todos los 8 riesgos con su nivel (Alto/Medio/Bajo)

---

### 9️⃣ Validación por 3 Expertos Independientes
**Afirmación en el artículo:** La metodología fue evaluada por expertos  
**Referencias bibliográficas:**
- Linstone & Turoff (2002) - The Delphi Method: Techniques and Applications
- Yin (2017) - Case Study Research and Applications

**Evidencia en el repo:**
- Archivo: [Evidencia de calificacion de los instrumentos por 3 expertos.xlsx](Evidencia%20de%20calificacion%20de%20los%20instrumentos%20por%203%20expertos.xlsx)

**Cómo validar:** Abra el archivo Excel para ver las calificaciones de cada experto

---

### 📊 Validación Académica Completa

Para una **revisión académica exhaustiva**, use esta matriz de validación:

```bash
# 1. Clone el repositorio
git clone <repo-url>
cd togaf-microfinance-digital-transformation

# 2. Abra el artículo PDF
open Articulo.pdf

# 3. Para cada tabla/figura en el artículo, verifique:
# Tabla 1 (ICA) → evidences/togaf-domains/business.md
# Tabla 2 (Apps) → evidences/togaf-domains/applications.md
# Tabla 3 (Data) → evidences/togaf-domains/data.md
# Tabla 4 (Gaps) → architecture/as-is-summary.md
# Tabla 5 (IMSA) → architecture/as-is-summary.md
# Tabla 6 (Indicators) → architecture/to-be-reference-architecture.md
# Tabla 7 (Risks) → risk/risk-register.md

# 4. Valide la matriz de trazabilidad
cat evidences/traceability-matrix.md

# 5. Revise la bibliografía
cat BIBLIOGRAPHY.md

# 6. Verifique la licencia y términos
cat LICENSE.md
```

---

## 🎓 Uso Académico vs. Implementación

| Aspecto | Uso Académico ✓ | Implementación Productiva ✗ |
|--------|-----------------|---------------------------|
| **Validar metodología** | Sí, mediante matriz de trazabilidad | No, es solo referencia |
| **Entender TOGAF por dominios** | Sí, análisis detallado disponible | No, requiere contexto específico |
| **Revisar riesgos públicos** | Sí, registro completo | No, necesita análisis específico |
| **Usar Terraform directamente** | Solo para aprendizaje | NO, carece de producción-readiness |
| **Replicar en otra institución** | Sí, como referencia | No, requiere adaptación completa |
| **Verificar indicadores AS-IS/TO-BE** | Sí, están documentados | No, son solo objetivos académicos |

---

## 📞 Información y Contacto

- **Alcance:** Caso de estudio académico - Institución Microfinanciera Peruana
- **Publicación:** Estudio validado por 3 expertos independientes
- **Repositorio:** Público y abierto para revisión académica
- **Actualizaciones:** Se mantiene alineado con el artículo publicado

---

## 📚 Bibliografía Completa

Para una bibliografía exhaustiva de todas las referencias utilizadas en este estudio, consulte:

👉 **[BIBLIOGRAPHY.md](BIBLIOGRAPHY.md)**

### Categorías de Referencias Incluidas:
- Marco teórico: TOGAF, arquitectura empresarial (Lankhorst, The Open Group)
- Metodologías: AHP (Saaty), IMSA, análisis de decisión
- Seguridad y riesgos: NIST SP 800-30, ISO/IEC 27005, ISO/IEC 27001
- Microservicios: Newman, Richardson, Martin Fowler
- Infrastructure as Code: Humble, Morris, Beda (Kubernetes)
- Terraform y AWS: documentación oficial, Bhatnagar, Poulton
- Microfinanzas: SBS Perú, CGAP, contexto institucional
- Metodología de investigación: Creswell, Yin (estudios de caso)
- Gobernanza y datos: DAMA, Seiner, directrices de anonimización

### Referencias Rápidas Principales

| Área | Referencia | Año | Aplicación |
|------|-----------|------|-----------|
| **Arquitectura** | The Open Group TOGAF 9.2 | 2018 | Framework principal |
| **Priorización** | Saaty - Analytic Hierarchy Process | 2008 | Cálculo ICA |
| **Seguridad** | NIST SP 800-30 Rev. 1 | 2012 | Análisis de riesgos |
| **Microservicios** | Newman - Building Microservices | 2021 | Diseño de servicios |
| **IaC** | Morris - Infrastructure as Code | 2016 | Brecha seleccionada |
| **Estudios de Caso** | Yin - Case Study Research | 2017 | Metodología de validación |

---

## 📝 Licencia de Uso

Este repositorio está bajo una **licencia académica especial** con términos específicos para uso educativo e investigación.

### Términos Principales

👉 **[LICENSE.md](LICENSE.md)** - Licencia completa

**Resumen Rápido:**

✓ **Permitido:**
- Revisar y validar metodología
- Usar como referencia para investigación académica
- Citar en trabajos de postgrado y educación
- Adaptar la metodología TOGAF a otros contextos
- Compartir para fines educativos

✗ **No permitido:**
- Uso comercial o de monetización
- Implementación directa en producción sin validación
- Identificación o des-anonimización de la institución
- Modificación del scope de confidencialidad
- Reclamo de autoría sin atribución

### Cómo Citar Este Trabajo

**APA:**
```
Autor(es). (2026). TOGAF Microfinance Digital Transformation: 
Diseño de arquitectura empresarial basada en TOGAF por dominios 
para la transformación digital de servicios microfinancieros. 
Caso Caja Los Andes. Universidad Nacional del Altiplano.
```

**BibTeX:**
```bibtex
@misc{togaf-microfinance-2026,
  author = {Autor(es)},
  title = {TOGAF Microfinance Digital Transformation},
  institution = {Universidad Nacional del Altiplano},
  year = {2026}
}
```

Para más formatos, consulte [LICENSE.md](LICENSE.md#-atribución-requerida)

---

## 🔒 Confidencialidad y Seguridad

La información en este repositorio está sujeta a las [políticas de gobernanza y seguridad](governance/) establecidas:

- [Política de Seguridad Pública](security/public-repo-security-policy.md) - Qué contenido es seguro publicar
- [Directrices de Anonimización](governance/anonymization-guidelines.md) - Cómo se protege la identidad institucional
- [Política de Acceso Ético](governance/ethical-evidence-access-policy.md) - Responsabilidades del usuario
- [Lista de Verificación de Publicación](governance/publication-checklist.md) - Validación previa a commits

---

## 🔗 Enlaces Rápidos

### 📄 Documentación Principal
- [Artículo Publicado](Articulo.pdf) - Estudio completo en PDF
- [Resumen Ejecutivo del Artículo](docs/article-summary.md)
- [Metodología Detallada](docs/methodology.md)
- [Alcance de Publicación](docs/publication-scope.md)

### 📚 Referencias y Licencia
- **[BIBLIOGRAPHY.md](BIBLIOGRAPHY.md)** - Bibliografía completa de todas las referencias
- **[LICENSE.md](LICENSE.md)** - Términos de licencia y atribución requerida

### 🏗️ Análisis Arquitectónico
- [Diagnóstico AS-IS](architecture/as-is-summary.md)
- [Arquitectura de Referencia TO-BE](architecture/to-be-reference-architecture.md)
- [Catálogo de Microservicios](architecture/microservices-catalog.md)
- [Diagrama de Arquitectura](architecture/diagrams/reference-architecture.mmd)

### ✅ Evidencias y Validación
- [Catálogo de Evidencias](evidences/evidence-catalog.md)
- [Matriz de Trazabilidad](evidences/traceability-matrix.md)
- **Análisis por Dominio TOGAF:**
  - [Dominio de Negocio](evidences/togaf-domains/business.md) (Criterios ICA)
  - [Dominio de Datos](evidences/togaf-domains/data.md)
  - [Dominio de Aplicaciones](evidences/togaf-domains/applications.md)
  - [Dominio de Tecnología](evidences/togaf-domains/technology.md)
  - [Dominio de Gobernanza](evidences/togaf-domains/governance.md)

### 🚀 Implementación y Código
- [Módulos Terraform](iac/terraform/)
- [Ejemplos de Referencia](iac/terraform/examples/)

### 🏛️ Gobernanza y Control
- [Registro de Riesgos](risk/risk-register.md)
- [Roles y Responsabilidades](governance/roles-and-responsibilities.md)
- [Lista de Verificación de Publicación](governance/publication-checklist.md)
- [Directrices de Anonimización](governance/anonymization-guidelines.md)
- [Política de Acceso Ético](governance/ethical-evidence-access-policy.md)

### 🔒 Seguridad
- [Política de Seguridad Pública](security/public-repo-security-policy.md)
- [Lista de Verificación de Secretos](security/secret-scanning-checklist.md)
- [Redacción de Información Sensible](security/sensitive-information-redaction.md)

### 📊 Validación Académica
- **[Matriz de Trazabilidad Completa](evidences/traceability-matrix.md)** - Mapeo artículo ↔ repositorio
- **[Evidencia de Validación por 3 Expertos](Evidencia%20de%20calificacion%20de%20los%20instrumentos%20por%203%20expertos.xlsx)** - Calificaciones independientes

---

**Última actualización:** Mayo 2026  
**Estado del Repositorio:** Alineado con artículo publicado ✓  
**Validación Académica:** Completada por 3 expertos independientes ✓
