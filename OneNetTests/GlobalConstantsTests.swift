//
//  GlobalConstantsTests.swift
//  OneNetTests
//

import XCTest
@testable import OneNet

final class GlobalConstantsTests: XCTestCase {

    func testForceRelayConnectionKey() {
        XCTAssertEqual(GlobalConstants.keyForceRelayConnection, "isConnectionForceRelayed")
    }

    func testLoginRequiredKey() {
        XCTAssertEqual(GlobalConstants.keyLoginRequired, "onenet.loginRequired")
    }

    func testUserPreferencesSuiteName() {
        XCTAssertEqual(GlobalConstants.userPreferencesSuiteName, "group.network.l1fe.onenetwork")
    }
}
