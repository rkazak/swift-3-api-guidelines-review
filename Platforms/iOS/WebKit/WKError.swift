
@available(iOS 8.0, *)
let WKErrorDomain: String
@available(iOS 8.0, *)
enum WKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case webContentProcessTerminated
  case webViewInvalidated
  case javaScriptExceptionOccurred
  @available(iOS 9.0, *)
  case javaScriptResultTypeIsUnsupported
}

@available(OSX 10.10, iOS 8.0, *)
extension WKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}