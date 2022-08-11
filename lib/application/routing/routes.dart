import 'package:fluro/fluro.dart';
import 'route_handlers.dart';

class Routes {
  static String root = '/';
  static String deviceDocument = '/device-document';
  static String serviceList = '/service-list';
  static String deviceList = '/device-list';
  static String service(String id) => '/service/$id';
  static String _service = '/service/:id';
  static String actionList = '/action-list';
  static String action = '/action';
  static String serviceStateTable = '/service-state-table';

  static FluroRouter configure(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc: (_, __) {
      print('Route was not found');
      return;
    });

    router.define(root, handler: rootHandler);
    router.define(deviceDocument, handler: deviceHandler);
    router.define(serviceList, handler: serviceListHandler);
    router.define(deviceList, handler: deviceListHandler);
    router.define(_service, handler: serviceHandler);
    router.define(actionList, handler: actionListHandler);
    router.define(action, handler: actionHandler);
    router.define(serviceStateTable, handler: serviceStateTableHandler);

    return router;
  }
}