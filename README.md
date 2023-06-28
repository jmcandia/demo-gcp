# DemoGcp

This project is a demo of how to deploy an Angular application to Google Cloud Platform (GCP), and it was generated with [Angular CLI](https://github.com/angular/angular-cli) version 16.0.2.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Deploying to GCP

To deploy to GCP, you need to first install the Google Cloud SDK. You can find the instructions [here](https://cloud.google.com/sdk/docs/install).

Once you have the SDK installed, you need to authenticate with your Google account. You can do this by running `gcloud auth login`.

After your account is authenticated, you need to set the project you want to deploy to. You can do this by running `gcloud config set project <project-id>`.

Then, you need to submit the build to the Google Cloud Build service. You can do this by running the following code:

```bash
gcloud builds submit --tag gcr.io/<project-id>/<image-name>
```

> Note: You need to replace `<project-id>` with the ID of the project you want to deploy to and `<image-name>` with the name of the image you want to build.

This will build the application and push it to the Google Container Registry. You can find more information about building and pushing to the Container Registry [here](https://cloud.google.com/container-registry/docs/pushing-and-pulling).

Finally, you can deploy the application by running the following code:

```bash
gcloud run deploy <image-name> \
   --image gcr.io/<project-id>/<image-name> \
   --platform managed
   --port 80
```

> Note: You need to replace `<project-id>` with the ID of the project you want to deploy to and `<image-name>` with the name of the image you want to deploy.

This will deploy the application to the App Engine. You can find more information about deploying to App Engine [here](https://cloud.google.com/appengine/docs/standard/nodejs/building-app/deploying-web-service).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
