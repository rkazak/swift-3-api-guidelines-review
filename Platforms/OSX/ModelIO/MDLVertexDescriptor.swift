
let MDLVertexAttributeAnisotropy: String
let MDLVertexAttributeBinormal: String
let MDLVertexAttributeBitangent: String
let MDLVertexAttributeColor: String
let MDLVertexAttributeEdgeCrease: String
let MDLVertexAttributeJointIndices: String
let MDLVertexAttributeJointWeights: String
let MDLVertexAttributeNormal: String
let MDLVertexAttributeOcclusionValue: String
let MDLVertexAttributePosition: String
let MDLVertexAttributeShadingBasisU: String
let MDLVertexAttributeShadingBasisV: String
let MDLVertexAttributeSubdivisionStencil: String
let MDLVertexAttributeTangent: String
let MDLVertexAttributeTextureCoordinate: String
enum MDLVertexFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case invalid
  case packedBit
  case uCharBits
  case charBits
  case uCharNormalizedBits
  case charNormalizedBits
  case uShortBits
  case shortBits
  case uShortNormalizedBits
  case shortNormalizedBits
  case uIntBits
  case intBits
  case halfBits
  case floatBits
  case uChar
  case uChar2
  case uChar3
  case uChar4
  case char
  case char2
  case char3
  case char4
  case uCharNormalized
  case uChar2Normalized
  case uChar3Normalized
  case uChar4Normalized
  case charNormalized
  case char2Normalized
  case char3Normalized
  case char4Normalized
  case uShort
  case uShort2
  case uShort3
  case uShort4
  case short
  case short2
  case short3
  case short4
  case uShortNormalized
  case uShort2Normalized
  case uShort3Normalized
  case uShort4Normalized
  case shortNormalized
  case short2Normalized
  case short3Normalized
  case short4Normalized
  case uInt
  case uInt2
  case uInt3
  case uInt4
  case int
  case int2
  case int3
  case int4
  case half
  case half2
  case half3
  case half4
  case float
  case float2
  case float3
  case float4
  case int1010102Normalized
  case uInt1010102Normalized
}
@available(OSX 10.11, *)
class MDLVertexBufferLayout : Object, Copying {
  var stride: Int
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class MDLVertexAttribute : Object, Copying {
  init(name: String, format: MDLVertexFormat, offset: Int, bufferIndex: Int)
  var name: String
  var format: MDLVertexFormat
  var offset: Int
  var bufferIndex: Int
  var initializationValue: vector_float4
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class MDLVertexDescriptor : Object, Copying {
  init(vertexDescriptor: MDLVertexDescriptor)
  func attributeNamed(name: String) -> MDLVertexAttribute?
  func addOrReplaceAttribute(attribute: MDLVertexAttribute)
  var attributes: MutableArray
  var layouts: MutableArray
  func reset()
  func setPackedStrides()
  func setPackedOffsets()
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}