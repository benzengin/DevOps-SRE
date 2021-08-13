# What is Nexus?

Nexus Repository OSS is an **open source repository** that supports many artifact formats, including Docker, Java™, and npm. With the Nexus tool integration, pipelines in your toolchain can publish and retrieve versioned apps and their dependencies by using central repositories that are accessible from other environments.

# What is a cleanup policy (Nexus)?

Cleanup policies define the criteria that control which components get cleaned up. The cleanup task controls when cleanup is performed. The strategy for this feature was to use a concept familiar to Nexus Repositories users (tasks) and introduce user-configurable criteria to drive actual cleanup behavior.

# What is an Artifact File?

- Artifact file looks different for each programming language

- JAR or WAR file
- include whole code plus dependencies: 
**Spring framework**,
**datetime libraries**,
**Pdf processing libraries**

# How to Buld the Artifact?

- Using a Building Tool
- Specify the programming language
- Install dependencies
- Compile and compress your code

Build Tools in Java:
- **JAR** or **WAR** file
- **Maven** or **Gradle**
