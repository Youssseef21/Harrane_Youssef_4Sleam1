package com.example.app;

//
// To push this project to GitHub:
//
// Open a terminal in the project root:
//   cd c:\Users\Youssefh\Desktop\untitled
//
// If the repo is not initialized:
//   git init
//
// Add or update the remote (use this URL):
//   git remote add origin https://github.com/Youssseef21/Harrane_Youssef_4Sleam1.git
//   --or if a remote already exists:
//   git remote set-url origin https://github.com/Youssseef21/Harrane_Youssef_4Sleam1.git
//
// Create main branch, commit and push:
//   git checkout -b main
//   git add .
//   git commit -m "Initial commit"
//   git push -u origin main
//
// Authenticate with GitHub via credential manager, SSH key, or a personal access token if prompted.
//

public class App {
	public static void main(String[] args) {
		System.out.println(getGreeting());
	}

	public static String getGreeting() {
		return "Hello, Maven project!";
	}
}