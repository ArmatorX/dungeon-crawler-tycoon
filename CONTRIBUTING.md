# **Guía de Contribución a Dungeon Crawler Tycoon**  

Este documento explica cómo colaborar eficientemente en el proyecto.  

---

## **1. Requisitos Previos** 

- **Godot 4.4**: Usamos funcionalidades específicas de esta versión.  
- **Git**: Manejo básico de branches, pulls y merges.  
- **Conventional Commits**: Obligatorio para mensajes de commit (más abajo detallamos). También puedes ver más información en [https://www.conventionalcommits.org/en/v1.0.0/](https://www.conventionalcommits.org/en/v1.0.0/).

---

## **2. Flujo de Trabajo**  

### **2.1. Asignación de Issues**  

1. **Busca o crea un issue**:  
   - Revisa las [issues abiertas](https://github.com/ArmatorX/dungeon-crawler-tycoon/issues) o crea una nueva si no existe. También puedes ver las issues en el [proyecto de GitHub](https://github.com/orgs/ArmatorX/projects/1/views/4). 
2. **Asignate**: Mueve la issue a **`In Progress`** y asígnatela.
3. **Crear una issue**: Selecciona un tipo (Bug, Feature o Tarea). El título debe ser una descripción simple, algo que permita identificarla rápidamente. En la descripción:
    1. Si es una feature, redactar con el formato estándar de una User Story `Como [Rol] quiero [Intención] para [Objetivo]`. Ejemplo: `Como Jugador quiero poder colocar trampas en la mazmorra para debilitar a los aventureros`. Se recomienda agregar criterios de aceptación, para mayor claridad del alcance de la historia.
    2. Si es un bug, detallar en profundidad los pasos a seguir para replicar el bug.

### **2.2. Trabajo en Branches**  
- **Nomenclatura**:  
  ```bash
  git checkout -b tipo/descripcion-breve  
  # Ejemplos:  
  git checkout -b feat/hero-spawning-system  
  git checkout -b fix/pathfinding-crash  
  ```  
  | Prefijo  | Uso                          |  
  |----------|------------------------------|  
  | `feat/`  | Nueva funcionalidad.         |  
  | `fix/`   | Corrección de bugs.          |  

### **2.3. Envío de Cambios (PR)**  
1. **Haz commits con Conventional Commits**: Los commits deben hacerse en inglés siguiendo las especificaciones de Conventional Commits. Se pueden usar los tipos feat, fix, build, chore, ci, docs, style, refactor, perf, test.
   ```bash
   git commit -m "feat: add hero spawning when legend_points >= 10"  
   git commit -m "fix: correct pathfinding in narrow corridors"  
   ```  
   - **Estructura**: `tipo(ámbito): descripción breve` ([spec 1.0](https://www.conventionalcommits.org/en/v1.0.0/)).

2. **Sube tu branch y crea un Pull Request**: No hace falta que haya una descripción, mientras esté vinculada la issue correspondiente a la PR.

---

## **3. Proceso de Revisión y Merge**  

### **3.1. Creación de la Pull Request (PR)**  
1. **Antes de enviar**:  
   - Asegúrate de corregir todos los conflictos que se generaron.  

2. **Envía la PR**:  
   - No hace falta que haya una descripción, mientras esté vinculada la issue correspondiente a la PR.
   - Recuerda colocarte como asignee.   
   - **Asígname como revisor**:  
     - En GitHub, ve a *"Reviewers"* → Busca mi usuario (`fefu-marquez`) y asígname.
     - **Notifícame**: Mencioname en un comentario (`@tuusuario`) o en un mensaje vía Discord.  

3. **Mueve la issue a `In review`**:
    - Esto ayuda a que la revise más rápido.

### **3.2. Revisión y Correcciones**  
- **Qué revisaré**:  
  - **Funcionalidad**: ¿El código hace lo que dice la issue?, ¿cumple los criterios de aceptación?
  - **Estándares**: ¿Sigue Conventional Commits y GDScript tipado?, ¿hay logs o imports sin usar?. Muy ocasionalmente, voy a solicitar cambios si el código es difícil de entender/mantener.
  - **Conflictos**: ¿Se integra correctamente con `main`?

- **Si hay cambios solicitados**:  
  - Haré comentarios específicos en la PR (en GitHub).  
  - **Corrige y actualiza la PR**:  
    ```bash
    git add .
    git commit -m "fix: address review comments (hero spawn timing)"
    git push origin tu-branch
    ```  
  - Marca los comentarios como resueltos cuando los hayas abordado.

### **3.3. Aprobación y Merge**  
- **Una vez aprobada**:  
  - Yo me encargaré de hacer el merge y eliminar la branch.

---

### **Reglas Clave**  
✅ **Mergeamos solo después de aprobación explícita**.  
🚫 *Nunca* hagas merge a `main` por tu cuenta, incluso con permisos.  
💡 Si tu PR está estancada (ej: sin revisión en 3 días), repórtalo en Discord o via mention.  

--- 

## **4. Estándares Técnicos**  

### **4.1. Godot 4.4**  
- **Documentación**:
  - La documentación debe hacerse en español, excepto lo que sean comentarios del código.
- **Estructura de archivos**:  
  ```text
  TODO: Agregar árbol con estructura del proyecto.
  ```  
- **GDScript**:  
  - Todo lo que sea relacionado al código se debe hacer en inglés. El código y los nombres de archivos deben estar en inglés.
  - Traten de ser ordenados.
  - No dejen logs/prints o imports sin usar.
  - Puntos extras por pruebas unitarias.

### **4.2. Arte y Assets**  

TODO: Agregar esto.

---

**¡Gracias por contribuir a Dungeon Crawler Tycoon!** 🧙💀  
