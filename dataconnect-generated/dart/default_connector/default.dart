library;
import 'dart:convert';







class DefaultConnector {
  

  static ConnectorConfig connectorConfig = ConnectorConfig(
    'us-central1',
    'default',
    'carrentalapp2b',
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

