### 201906053 - Jose Rodrigo Rodas Palencia

## Tipos de Kernel y sus diferencias

### Kernel Monolitico
Es el tipo de Kernel donde se ejecuta completamente en una sola direccion de espacio, todo corre en el nucleo. Tiene un diseño modular que permite modificar el kernel durante el tiempo de ejecución.. A diferencia de otros tipos de Kernel este es mas rapido ya que no realiza cambios entre el modo usuario y kernel. Es eficiente ya que los nucleos monoliticos son significativamente mas rapidos que otros, tipos de nucleos. Asi como menor latencia y mayor facilidad de diseño.

Al correr todo en el nucleo esto crear vulnerabilidades de seguridad. Asi como los nucleos monoliticos son dificiles de mantener ya que cualquier cambio en un servicio afectaria a todo el sistema.s


### Micro Kernel
Son un tipo de Kernel que posee memoria virtual y programacion de hilos. La arquitectura de los micronucleos, nacen por la complejidad del Kernel al convertirse mas dificil y largo de manejar.

La función principal del microkernel es proporcionar comunicación. entre el programa cliente y los diversos servicios que también se ejecutan en
espacio de usuario.

Un beneficio del enfoque del micronúcleo es que hace que extender el sistema operativo sea más fácil. Todos los nuevos servicios se agregan al espacio del usuario y, en consecuencia no requieren modificación del kernel. Cuando el núcleo tiene que
modificarse, los cambios tienden a ser menores, porque el micronúcleo es un
núcleo.

### Kernel híbrido

Es la combinación de núcleo monolítico y microkernel. Tiene la velocidad y el diseño del kernel monolítico y la modularidad y estabilidad del micronero.

Los nucleos hibridos ofrecen un mejor rendimiento ya que reducen el numero de interruptores de contexto necesarios entre el espacio de usuario y el espacio del núcleo. Ofrecen flexibilidad, fiabilidad, compatibilidad pero tambien pueden ser complejos que los nucleos monoliticos en el diseño e implementacion.

### Exo Kernel

Es el tipo de núcleo que sigue el principio de extremo a extremo. Tiene menos abstraciones de hardware como sea posible. Asigna recursos físicos a aplicaciones. 

Ofrecen una gran fexibilidad y rendimiento ya que elimina abstracciones inecesarias y permite que las aplicaciones accedan directamente a los recursos del hardware. Asi como ser altamente modulares, lo que permite la fácil adición o eliminación de los servicios de sistemas operativos.

### Nano Kernel

Es el tipo de núcleo que ofrece abstracción de hardware pero sin servicios del sistema. El Micro Kernel tampoco tiene servicios de sistema por lo que el Micro Kernel y el Nano Kernel se han vuelto análogos.

Son altamente modulares, lo que permite la fácil adición o eliminación de los servicios de sistemas operativos, haciéndolos más flexibles y personalizables que los núcleos monolíticos tradicionales pero que sólo  proporcionan las funciones más esenciales, por lo que no son adecuadas para aplicaciones más complejas que requieren una gama más amplia de servicios.


## User vs Kernel Mode

Los modos de user y kernel se pueden conceptualizar como el modo de trabajo del sistema operativo, se pueden visualizar como roles donde cada uno emite acciones.

El user mode, hace llamadas a traves de los programas de usuario donde se requiere que el sistema operativo realice diferentes operaciones y en ese proceso se cambia al kernel mode que realiza la ejecucion de las llamadas, esto porque actua como un anillo de seguridad al restringir al user mode a realizar las llamadas y no poder ejecutarlas. 

Se lograr esta protección designando algunas de las instrucciones que puedan causar daño como "instrucciones privilegiadas". El hardware permite ejecutar instrucciones privilegiadas sólo en modo kernel. Si se intenta ejecutar una instrucción privilegiada en modo usuario, el hardware no ejecuta
la instrucción, sino que la trata como ilegal.

## Interruptions vs Trap
### Trap
Una forma de interrupción es una trap (o una excepción), que es una interrupción generada por software causada por un error o por una solicitud específica de un programa de usuario para que se realice un servicio del sistema operativo mediante la ejecución de una operación especial llamada sistema. llamar.

### Interruptions
El hardware puede provocar una interrupción en cualquier momento enviando una señal a la CPU. Las interrupciones también se utilizan para muchos otros propósitos y son una parte clave de cómo interactúan los sistemas operativos y el hardware. Cuando se interrumpe la CPU, detiene lo que está haciendo e inmediatamente transfiere la ejecución a una ubicación fija. La ubicación fija generalmente contiene la dirección inicial donde se encuentra la rutina de servicio para la interrupción.

Las interrupciones son una parte importante de la arquitectura de una computadora. Cada diseño de computadora tiene su propio mecanismo de interrupción, pero varias funciones son comunes. La interrupción debe transferir el control a la rutina de servicio de interrupción adecuada.