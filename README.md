# TOGAF Microfinance Digital Transformation
## Diseño de arquitectura empresarial basada en TOGAF por dominios para la transformación digital de servicios microfinancieros: caso Caja Los Andes

---

## 📋 Propósito

Este repositorio contiene el trabajo de investigación y las **evidencias que validan** un estudio de diagnóstico de arquitectura empresarial aplicado a una institución microfinanciera peruana. El estudio utiliza **TOGAF como marco de referencia** para diagnosticar cinco dominios arquitectónicos críticos (negocio, datos, aplicaciones, tecnología y gobernanza), sin aplicar el ciclo completo y secuencial ADM.

### Objetivo Principal
Identificar y priorizar brechas arquitectónicas mediante una metodología estructurada de 7 etapas, culminando en el diseño conceptual de una solución de **Infrastructure as Code para microservicios críticos**.

---

## 🔄 Cadena Metodológica

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

### Para Validar el Artículo
- **Inicio:** Lea [article-summary.md](docs/article-summary.md) para el resumen ejecutivo
- **Metodología:** Consulte [methodology.md](docs/methodology.md) para detalles técnicos
- **Evidencias:** Explore [evidences/](evidences/) para la matriz de trazabilidad y análisis por dominio
- **Riesgos:** Revise [risk/risk-register.md](risk/risk-register.md) para el análisis de riesgos

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

## 📚 Referencias Normativas y Marcos

### Marcos arquitectónicos
- [The Open Group TOGAF 9.2](https://www.opengroup.org/togaf) - Enterprise Architecture Framework

### Metodologías
- **AHP (Analytical Hierarchy Process)** - Proceso Analítico Jerárquico para ponderación
- **IMSA (Instrumento de Selección Arquitectónica Multidimensional)** - Priorización de gaps

### Estándares de seguridad y riesgo
- [NIST SP 800-30 Rev. 1](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-30r1.pdf) - Risk Management Guide
- [ISO/IEC 27005:2022](https://www.iso.org/standard/80585.html) - Information Security Risk Management

### Infraestructura
- **Terraform** - Infrastructure as Code (HashiCorp)
- **AWS Services** - EKS, API Gateway, VPC, CodePipeline, CloudWatch

---

## 📝 Licencia y Uso

Este repositorio documenta un **estudio académico de caso** sobre transformación digital en microfinanzas. 

✓ **Permitido:**
- Revisar y validar la metodología
- Usar como referencia para otros estudios
- Citar en trabajos académicos
- Adaptar la metodología a otros contextos

✗ **No permitido:**
- Usar como base directa para producción sin adaptación
- Reproducir identidades específicas de la institución
- Usar código Terraform sin configuración específica

La información está sujeta a las [políticas de gobernanza y seguridad](governance/) establecidas.

---

## 🔗 Enlaces Rápidos

### Documentación Principal
- [Resumen del Artículo](docs/article-summary.md)
- [Metodología Detallada](docs/methodology.md)
- [Alcance de Publicación](docs/publication-scope.md)

### Análisis Arquitectónico
- [Diagnóstico AS-IS](architecture/as-is-summary.md)
- [Arquitectura de Referencia TO-BE](architecture/to-be-reference-architecture.md)
- [Diagrama de Arquitectura](architecture/diagrams/reference-architecture.mmd)

### Evidencias y Validación
- [Catálogo de Evidencias](evidences/evidence-catalog.md)
- [Matriz de Trazabilidad](evidences/traceability-matrix.md)
- [Análisis por Dominio TOGAF](evidences/togaf-domains/)

### Gestión y Control
- [Registro de Riesgos](risk/risk-register.md)
- [Roles y Responsabilidades](governance/roles-and-responsibilities.md)
- [Política de Seguridad](security/public-repo-security-policy.md)

### Implementación
- [Módulos Terraform](iac/terraform/)
- [Ejemplos de Referencia](iac/terraform/examples/)

---

**Última actualización:** Mayo 2026  
**Estado:** Alineado con artículo publicado ✓
