node {
	stage('Clone repository') {
		git branch: 'main' credentialsId: 'github_access_token', url: 'https://github.com/parkkkkjuneHyeon/practice-docker.git'
	}
	stage('Build image') {
		dockerImage = docker.build("gktkwk/chatroom:v1.0")
	}
	stage('Push Image') {
		withDockerRegistry([ credentialsId: "docker-access", url: "" ]) {
		dockerImage.push()
		}
	}
}
