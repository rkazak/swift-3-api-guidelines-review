
@available(tvOS 8.0, *)
class UIImageAsset : Object, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  func imageWith(traitCollection: UITraitCollection) -> UIImage
  func register(image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregisterImageWith(traitCollection: UITraitCollection)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
}