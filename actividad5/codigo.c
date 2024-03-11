#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *thread_function(void *arg) {
    printf("Hilo creado\n");
    return NULL;
}

int main() {
    pid_t pid;
    pthread_t tid;

    pid = fork(); // Se crea proceso
    if (pid == 0) {
        fork(); // Se crea proceso
        pthread_create(&tid, NULL, thread_function, NULL); // Se crea un hilo
    }
    fork(); // Se crea proceso
    sleep(1);
    return 0;
}
