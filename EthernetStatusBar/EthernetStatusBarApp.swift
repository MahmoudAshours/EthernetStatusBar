//
//  EthernetStatusBarApp.swift
//  EthernetStatusBar
//
//  Created by Mahmoud Ashour on 12/05/2025.
//
import Network

import SwiftUI

class EthernetStatus: ObservableObject {
    @Published var isConnected: Bool = false
    private let monitor = NWPathMonitor(requiredInterfaceType: .wiredEthernet)
    private let queue = DispatchQueue.global(qos: .background)

    init() {
        monitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async {
                self?.isConnected = (path.status == .satisfied)
            }
        }
        monitor.start(queue: queue)
    }
}


@main
struct EthernetStatusBarApp: App {
    @StateObject private var ethernetStatus = EthernetStatus()

    var body: some Scene {
        MenuBarExtra("Ethernet", systemImage: ethernetStatus.isConnected ? "network" : "network.slash") {
            if ethernetStatus.isConnected {
                Text("Ethernet Connected")
            } else {
                Text("Ethernet Disconnected")
            }
        }
        .menuBarExtraStyle(.menu)
    }
}
