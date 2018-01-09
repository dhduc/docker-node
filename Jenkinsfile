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
            sh 'echo shell script'
        }
    }

    stage('Build image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused.
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
        */
        app.inside {
            sh 'docker build -t huuduc2107/docker-node:latest .'
            sh 'docker run -it -p 8000:8000 huuduc2107/docker-node'
        }
    }
}
