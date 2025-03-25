////No sirve pa nada
library;

class DefaultConnector {
  
  static ConnectorConfig connectorConfig = ConnectorConfig(

  );

  DefaultConnector({required this.dataConnect});
  static DefaultConnector get instance {
    return DefaultConnector(
        dataConnect: FirebaseDataConnect.instanceFor(
            connectorConfig: connectorConfig,
            sdkType: CallerSDKType.generated));
  }

  FirebaseDataConnect dataConnect;
}

class ConnectorConfig {
}

class CallerSDKType {
  static var generated;
}

class FirebaseDataConnect {
  static instanceFor({required connectorConfig, required sdkType}) {}
}

