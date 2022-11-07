import '../../infrastructure/upnp/models/device.dart';
import '../../infrastructure/upnp/ssdp_response_message.dart';

/// An aggregate object that represents a discoverable UPnP Device.
class UPnPDevice {
  final DiscoveryResponse discoveryResponse;
  final DeviceDescription description;

  Uri get ipAddress => Uri.parse(discoveryResponse.origin);

  UPnPDevice(this.discoveryResponse, this.description);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UPnPDevice) && other.discoveryResponse == this.discoveryResponse;

  @override
  int get hashCode => this.discoveryResponse.hashCode ^ 7 >> 13;
}
