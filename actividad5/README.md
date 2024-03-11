## Actividad 5

a)¿Cuántos procesos únicos son creados?
3 procesos, esto porque cada instruccion fork genera un clon identico al proceso padre que en este cazo seria el proceso que genera el programa al ejecutarse.

    pid = fork(); // Se crea proceso
    if (pid == 0) {
        fork(); // Se crea proceso
    }
    fork(); // Se crea proceso

b)¿Cuántos hilos únicos son creados?
Un unico hilo.

    if (pid == 0) {
        pthread_create(&tid, NULL, thread_function, NULL); // Se crea un hilo
    }