//
//  EnvVarPackager.swift
//  OneNet
//
//  Created by Diego Romar on 03/12/25.
//

class EnvVarPackager {
    static func getEnvironmentVariables(defaults: UserDefaults) -> OneNetSDKEnvList? {
        guard let envList = OneNetSDKEnvList() else {
            return nil
        }

        defaults.register(defaults: [GlobalConstants.keyForceRelayConnection: true])
        let forceRelayConnection = defaults.bool(forKey: GlobalConstants.keyForceRelayConnection)

        envList.put(OneNetSDKGetEnvKeyONETForceRelay(), value: String(forceRelayConnection))

        return envList
    }
}
