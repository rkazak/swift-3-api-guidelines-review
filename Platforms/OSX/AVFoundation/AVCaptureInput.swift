
@available(OSX 10.7, *)
class AVCaptureInput : Object {
  var ports: [AnyObject]! { get }
  init()
}
@available(OSX 10.7, *)
let AVCaptureInputPortFormatDescriptionDidChangeNotification: String
@available(OSX 10.7, *)
class AVCaptureInputPort : Object {
  var input: AVCaptureInput! { get }
  var mediaType: String! { get }
  var formatDescription: CMFormatDescription! { get }
  var isEnabled: Bool
  @available(OSX 10.9, *)
  var clock: CMClock! { get }
  init()
}
@available(OSX 10.7, *)
class AVCaptureDeviceInput : AVCaptureInput {
  init(device: AVCaptureDevice!) throws
  var device: AVCaptureDevice! { get }
  init()
}
@available(OSX 10.7, *)
class AVCaptureScreenInput : AVCaptureInput {
  init!(displayID: CGDirectDisplayID)
  var minFrameDuration: CMTime
  var cropRect: CGRect
  var scaleFactor: CGFloat
  var capturesMouseClicks: Bool
  @available(OSX 10.8, *)
  var capturesCursor: Bool
  @available(OSX, introduced=10.8, deprecated=10.10)
  var removesDuplicateFrames: Bool
  init()
}