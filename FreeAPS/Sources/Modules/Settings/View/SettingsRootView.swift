import SwiftUI

extension Settings {
    struct RootView: BaseView {
        @EnvironmentObject var viewModel: ViewModel<Provider>

        var body: some View {
            Form {
                Text("Preferences").modal(for: .configEditor(file: OpenAPS.Settings.preferences), from: self)
                Text("Autosense").modal(for: .configEditor(file: OpenAPS.Settings.autosense), from: self)
                Text("Pump History").modal(for: .configEditor(file: OpenAPS.Monitor.pumpHistory), from: self)
                Text("Nightscout").modal(for: .nighscoutConfig, from: self)
                Text("Pump").modal(for: .pumpConfig, from: self)
            }
            .toolbar { ToolbarItem(placement: .principal) { Text("Settings") } }
        }
    }
}