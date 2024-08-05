# FABuild-Monitoring-Plugin

## Requirements
Teh Build SDK is required

## Installation
Install via Swift Package Manager

## Metrics 

- **Durations**, to load each WebViews 
    - **native_start** : The native event when the WebView start to load an url
    - **web_load** : The Web event when the WebView start to load the DOM
    - **web_DOMContentLoaded** : The Web event when the WebView has downloaded the DOM
    - **web_DocumentReadyStateIntractive** : The Web event when the WebView change to Interactive 
    - **web_DocumentReadyStateComplete** : The Web event when the WebView change to Complete 
    - **native_didFinish** : The native event when the WebView finish to download all the resources

- **Sections**, to identify each WebView using an index.

- **Build Events**, some important events in a BUILD App 
    - **sdk_start**
    - **sdk_remove_splashview** : when the initial SplashScreen is removed 
    - **sdk_all_webviews_are_loaded** : when all the webViews (all sections) are loaded

- **Traces attributes**,
    - **url**,
    - **path**,
    - **sectionType**,
    - **sectionIndex**,
    - **loggedInStatus**,

## Firebase integration demo 

The Plugin can be connected to Firebase Performance project.
For now, this code is developed in the Client App.

Sample of Firebase Performance implementation by implementing the protocol PerformancesMonitoringDelegate
This sample is available in the demo project of that plugin. 

```Swift
// Register the right Plugin (PerformancesMonitoringPlugin)
    override func getPlugins() -> [FABasePlugin] {
        let firebaseManager = FirebasePerformanceTracesManager() // to log traces on Firebase Performances
        let debugManager = DebugPrintTracesManager() // to log traces in the console
        let plugin = PerformancesMonitoringPlugin(tracesManagers: [firebaseManager, debugManager])
        return [plugin]
    }
```

Register additional attributes to the Firebase Traces
```Swift
class AppCoordinator: FABaseAppCoordinator {    
    override func getConfigurationName() -> String? {
        return "configuration"
    }
    
    override func getPlugins() -> [FABasePlugin] {
        let firebaseManager = FirebasePerformanceTracesManager()
        firebaseManager.delegate = self
        let plugin = PerformancesMonitoringPlugin(tracesManagers: [firebaseManager])
        return [plugin]
    }
}

extension AppCoordinator: FirebasePerformanceDelegate {
    // Additional attributes to track
    func updateTraceAdditional(attributes: [String : String]) -> [String : String] {
        var dict = attributes
        dict["app_configuration"] = "only_the_1st" //  loading_all_serialized // only_the_1st
        return dict
    }
}

```

## RoadMap

[ ] Add Datadog traces support  
[ ] Add more SDK life Events  

## Author

Jérôme Morissard, jerome.morissard@bryj.ai

## License

Build-V3-Plugin-Monitoring-ios is available under the MIT license. See the LICENSE file for more info.
