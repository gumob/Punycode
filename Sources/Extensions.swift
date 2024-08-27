//
// Created by Kojiro Futamura on 2018-11-19.
//

import Foundation

/// This extension provides methods for encoding and decoding strings using Punycode (RFC 3492) 
/// and IDNA encoding. It allows for the conversion of Substring instances to their Punycode 
/// and IDNA representations, facilitating the handling of internationalized domain names.
public extension Substring {
    /// Returns new string in punycode encoding (RFC 3492)
    ///
    /// - Returns: Punycode encoded string or nil if the string can't be encoded
    var punycodeEncoded: String? {
        return Puny().encodePunycode(self)
    }

    /// Returns new string decoded from punycode representation (RFC 3492)
    ///
    /// - Returns: Original string or nil if the string doesn't contain correct encoding
    var punycodeDecoded: String? {
        return Puny().decodePunycode(self)
    }

    /// Returns new string containing IDNA-encoded hostname
    ///
    /// - Returns: IDNA encoded hostname or nil if the string can't be encoded
    var idnaEncoded: String? {
        return Puny().encodeIDNA(self)
    }

    /// Returns new string containing hostname decoded from IDNA representation
    ///
    /// - Returns: Original hostname or nil if the string doesn't contain correct encoding
    var idnaDecoded: String? {
        return Puny().decodedIDNA(self)
    }
}

/// This extension provides methods for encoding and decoding strings using Punycode (RFC 3492) 
/// and IDNA encoding. It allows for the conversion of String instances to their Punycode 
/// and IDNA representations, facilitating the handling of internationalized domain names.
public extension String {

    /// Returns new string in punycode encoding (RFC 3492)
    ///
    /// - Returns: Punycode encoded string or nil if the string can't be encoded
    var punycodeEncoded: String? {
        return self[..<self.endIndex].punycodeEncoded
    }

    /// Returns new string decoded from punycode representation (RFC 3492)
    ///
    /// - Returns: Original string or nil if the string doesn't contain correct encoding
    var punycodeDecoded: String? {
        return self[..<self.endIndex].punycodeDecoded
    }

    /// Returns new string containing IDNA-encoded hostname
    ///
    /// - Returns: IDNA encoded hostname or nil if the string can't be encoded
    var idnaEncoded: String? {
        return self[..<self.endIndex].idnaEncoded
    }

    /// Returns new string containing hostname decoded from IDNA representation
    ///
    /// - Returns: Original hostname or nil if the string doesn't contain correct encoding
    var idnaDecoded: String? {
        return self[..<self.endIndex].idnaDecoded
    }
}
