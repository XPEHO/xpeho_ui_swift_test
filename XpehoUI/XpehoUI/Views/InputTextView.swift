//
//  InputTextView.swift
//  XpehoUI
//
//  Created by Ryan Debouvries on 05/08/2024.
//

import SwiftUI
import xpeho_ui

struct InputTextView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                InputText()
                InputText(
                    label: "Input Text Hiddenable",
                    password: true
                )
                InputText(
                    label: "Input Text With Input",
                    defaultInput: "input"
                )
                InputText(
                    label: "Input Text Hiddenable With Input",
                    defaultInput: "input",
                    password: true
                )
                InputText(
                    label: "Input Text Customed",
                    passwordSwitcherIcon: AnyView(
                        Assets.loadImage(named: "Eye")
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                    ),
                    labelSize: 15.0,
                    inputSize: 20.0,
                    labelColor: XPEHO_THEME.RED_INFO_COLOR,
                    backgroundColor: XPEHO_THEME.CONTENT_COLOR,
                    inputColor: .white,
                    onInput: testInputFunction
                )
                InputText(
                    label: "Input Text Customed With Input",
                    passwordSwitcherIcon: AnyView(
                        Assets.loadImage(named: "Eye")
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                    ),
                    defaultInput: "input",
                    labelSize: 15.0,
                    inputSize: 20.0,
                    labelColor: XPEHO_THEME.RED_INFO_COLOR,
                    backgroundColor: XPEHO_THEME.CONTENT_COLOR,
                    inputColor: .white,
                    onInput: testInputFunction
                )
                InputText(
                    label: "Input Text Hiddenable Customed With Input",
                    passwordSwitcherIcon: AnyView(
                        Assets.loadImage(named: "Eye")
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                    ),
                    defaultInput: "input",
                    labelSize: 15.0,
                    inputSize: 20.0,
                    labelColor: XPEHO_THEME.RED_INFO_COLOR,
                    backgroundColor: XPEHO_THEME.CONTENT_COLOR,
                    inputColor: .white,
                    password: true,
                    onInput: testInputFunction
                )
                
                Spacer()
            }
            .padding()
            .navigationTitle("InputText")
        }
        .background(XPEHO_THEME.BACKGROUND_COLOR.scaledToFill().edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    InputTextView()
}
