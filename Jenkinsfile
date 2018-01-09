node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("huuduc2107/docker-node")
    }

    stage('Test') {
        /* Ideally, we would run a test framework against our image.
         * This runs only a single dummy test inside the image. */

        app.inside {
            sh 'echo Hello Jenkins'
        }
    }
}
