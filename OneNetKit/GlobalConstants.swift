//
//  GlobalConstants.swift
//  OneNetwork
//
//  Created by Diego Romar on 03/12/25.
//  Modified for OneNetwork by L1fe AI, Inc.
//

struct GlobalConstants {
    // App Group identifier - must match your Apple Developer provisioning
    static let userPreferencesSuiteName = "group.network.l1fe.onenetwork"
    
    static let keyForceRelayConnection = "isConnectionForceRelayed"
    static let keyLoginRequired = "onenetwork.loginRequired"
    static let keyNetworkUnavailable = "onenetwork.networkUnavailable"
    
    static let configFileName = "onenetwork.cfg"
    static let stateFileName = "state.json"
    
    // Branding
    static let appName = "OneNetwork"
    static let companyName = "L1fe AI, Inc."
    static let managementURL = "https://api.vpn.l1fe.network"
    static let docsURL = "https://docs.l1fe.network"
    static let supportURL = "https://l1fe.network/support"
}
