# hsapp2
 
**Micro-credit  application**
 
Flutter gives its developers a lot of freedom in terms of architectural choices and other software and codebase-related decisions. It does not have a strong opinion on folder structure, file conventions, etc. This can be a blessing as well as a pain. Blessing in the sense that the developer is free to fine-tune the project and directory structure according to his/her needs and the needs of the project; while at the same time the lack of defined structure can make large projects extremely difficult to manage.
The community has adopted some patterns and two of the most popular ones are Folder By Type/Domain and Folder By Feature.

**Folders By Type/Domain**
By far the most common pattern among Flutter developers, the folder by type patterns suggests organizing files according to their functionality/type. For example, all screens would go in a folder called screens or something similar, data models go into a folder called models or similar, and so on. This pattern is extremely intuitive and very beginner-friendly. This pattern works well with smaller projects but as soon as you start having more than 10–15 files of each type, it quickly gets extremely difficult to manage and maintain. Most of the developer time is spent searching for the right file and hence this pattern does not scale well for large projects.

--lib
  |--screens
  |--widgets
  |--services
  |--view_models
  |--services
  |-- ...
  
**Folders By Feature**
If you have a large project, the folders by feature pattern is the way to go. It scales well and organizes files in its feature folder. The core concept is to have folders as per the features in the application which ensures that the screens, widgets, controllers, services for that particular feature are all contained within a single folder. This pattern may be overkill for a small project or difficult to foresee for a project that does not have well-defined features.

--lib
  |--feature_1
  |  |--screens
  |  |--widgets
  |  |--models
  |  |--services
  |  |--view_models
  |--feature_2
  |  |--screens
  |  |--widgets
  |  |--models
  |  |--services
  |  |--view_models
  |....
To help with the folder by feature pattern, I authored a very opinionated CLI tool that generates the folder structure and the required files within them to provide an excellent structure for code organization, testing while still being maintainable and easy to use.
It generates a folder structure like below:

feature1/
┣ domain/
┃ ┣ models/
┃ ┃ ┗ feature1_model.dart
┃ ┣ repository/
┃ ┃ ┗ feature1_repository.dart
┃ ┣ services/
┃ ┃ ┗ feature1_service.dart
┃ ┗ feature1_domain.dart
┣ providers/
┃ ┣ feature1_provider.dart
┃ ┗ providers.dart
┣ screens/
┃ ┣ feature1_screen.dart
┃ ┗ screens.dart
┣ widgets/
┃ ┣ feature1_widget.dart
┃ ┗ widgets.dart
┗ index.dart

**The different components in the folder structure are:**
Domain → Models — contains all the data models and JSON to/from Dart helper functions
Domain → Repository — contains abstract classes that describe the feature functionality
Domain → Services — contains the actual implementation of the repository
Providers — contains everything related to the state for that particular feature
Screens — contains full screens that have a Scaffold
Widgets — contains all the widgets required for that particular feature
Each of the folders has a common export file that simply exports everything which enables us to tidy up our imports when importing multiple things from the same feature.

**feature_folder_cli | Flutter Package**

A Dart CLI tool that generates the folder structure for the folder-by-feature pattern. This tool helps to reduce the…
pub.dev

Bonus Tip
Another great approach to code organization and modularity is extracting common pieces of code into packages. This can be done by either publishing a package to pub.dev, uploading to a remote git repository, or the easiest way, by having them in the same codebase as separate folders in a packages folder in the project root.

--lib
--packages
  |--pkg_1
  |  |--lib
  |  |--pubspec.yaml

Each package would have its pubspec.yaml file that would contain dependencies only for that package. The packages can then be imported using the following in the project pubspec.yaml file:

pkg_1:
  path: ./packages/pkg_1

In conclusion, the choice depends on the scale of the project you are undertaking but having an opinionated pattern for larger projects is the way to go as it brings consistency at the cost of some boilerplate code which is a good deal in most cases.
