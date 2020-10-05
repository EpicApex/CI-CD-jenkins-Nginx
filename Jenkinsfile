node {
    def app
    
    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */
        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image */
        app = docker.build("https://hub.docker.com/repositories")
    }

    stage('Test image') {
        
        app.inside {
            echo "Tests passed"
        }
    }

    stage('Push image') {
        /* 
			Login to hub.docker.com and docker.io before you can push images to your account
		*/
        /*docker.withRegistry('https://docker.io/', 'dockerhub'){} */
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            // Jenkins pipeline job push's the new build number coming from docker.
            app.push("${env.BUILD_NUMBER}")
            app.push("latest") 
            } 
            echo "Trying to Push Docker Build to DockerHub"
    }
}