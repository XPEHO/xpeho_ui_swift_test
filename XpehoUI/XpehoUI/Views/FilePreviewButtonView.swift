//
//  FilePreviewButtonView.swift
//  XpehoUI
//
//  Created by Ryan Debouvries on 25/07/2024.
//

import SwiftUI
import xpeho_ui

struct FilePreviewButtonView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                FilePreviewButton(
                    labelStart: "File Preview Button",
                    labelEnd: "",
                    tags: [
                        TagPill(
                            label: "Tag Pill 1"
                        ),
                        TagPill(
                            label: "Tag Pill 2"
                        ),
                        TagPill(
                            label: "Tag Pill 3"
                        ),
                        TagPill(
                            label: "Tag Pill 4"
                        )
                    ]
                )
                FilePreviewButton(
                    labelStart: "File Preview Button Customized",
                    labelEnd: "",
                    tags: [
                        TagPill(
                            label: "Tag Pill Custom 1",
                            backgroundColor: XPEHO_THEME.RED_INFO_COLOR
                        ),
                        TagPill(
                            label: "Tag Pill Custom 2",
                            backgroundColor: XPEHO_THEME.RED_INFO_COLOR
                        ),
                        TagPill(
                            label: "Tag Pill Custom 3",
                            backgroundColor: XPEHO_THEME.RED_INFO_COLOR
                        ),
                        TagPill(
                            label: "Tag Pill Custom 4",
                            backgroundColor: XPEHO_THEME.RED_INFO_COLOR
                        )
                    ],
                    arrowIcon: AnyView(
                        Assets.loadImage(named: "Arrow-right")
                            .renderingMode(.template)
                            .foregroundStyle(XPEHO_THEME.RED_INFO_COLOR)
                    ),
                    height: 200,
                    labelSize: 20,
                    backgroundColor: XPEHO_THEME.CONTENT_COLOR,
                    labelColor: .white,
                    labelPosition: .bottom,
                    onPress: testFunction
                )
                FilePreviewButton(
                    labelStart: "File Preview Button Disabled",
                    labelEnd: "",
                    tags: [
                        TagPill(
                            label: "Tag Pill 1"
                        ),
                        TagPill(
                            label: "Tag Pill 2"
                        ),
                        TagPill(
                            label: "Tag Pill 3"
                        ),
                        TagPill(
                            label: "Tag Pill 4"
                        )
                    ],
                    enabled: false
                )
                
                Spacer()
            }
            .padding()
            .navigationTitle("FilePreviewButton")
        }
        .background(XPEHO_THEME.BACKGROUND_COLOR.scaledToFill().edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    FilePreviewButtonView()
}
