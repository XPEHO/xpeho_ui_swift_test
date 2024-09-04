//
//  CollapsableCardView.swift
//  XpehoUI
//
//  Created by Ryan Debouvries on 25/07/2024.
//

import SwiftUI
import xpeho_ui

struct CollapsableCardView: View {
    var baseIcon: Image = Assets.loadImage(named: "Briefcase")
    var qvstIcon: Image = Assets.loadImage(named: "QVST")
    var newsletterIcon: Image = Assets.loadImage(named: "Newsletter")
    var birthdayIcon: Image = Assets.loadImage(named: "Birthday")
    var openArrowIcon: Image = Assets.loadImage(named: "Chevron-down")
    var closeArrowIcon: Image = Assets.loadImage(named: "Chevron-up")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                CollapsableCard(
                    tags: [
                        TagPill(
                            label: "Tag 1",
                            backgroundColor: XPEHO_THEME.GREEN_DARK_COLOR
                        ),
                        TagPill(
                            label: "Tag 2",
                            backgroundColor: XPEHO_THEME.RED_INFO_COLOR
                        ),
                        TagPill(
                            label: "Tag 3",
                            backgroundColor: XPEHO_THEME.XPEHO_DARK_COLOR
                        )
                    ],
                    button: ClickyButton(
                        label: "Collapsable Action",
                        horizontalPadding: 50,
                        verticalPadding: 12
                    ),
                    icon: AnyView(
                        baseIcon
                            .renderingMode(.template)
                            .foregroundStyle(XPEHO_THEME.XPEHO_COLOR)
                    )
                )
                CollapsableCard(
                    label: "QVST Title",
                    tags: [
                        TagPill(
                            label: "topic"
                        ),
                        TagPill(
                            label: "_ days remaining",
                            backgroundColor: XPEHO_THEME.RED_INFO_COLOR
                        ),
                        TagPill(
                            label: "_/_ completed"
                        )
                    ],
                    button: ClickyButton(
                        label: "Complete",
                        horizontalPadding: 50,
                        verticalPadding: 12
                    ),
                    icon: AnyView(
                        qvstIcon
                            .renderingMode(.template)
                            .foregroundStyle(XPEHO_THEME.XPEHO_COLOR)
                    )
                )
                CollapsableCard(
                    label: "Newsletter #__",
                    headTag: TagPill(
                        label: "__/__/____",
                        backgroundColor: XPEHO_THEME.GREEN_DARK_COLOR
                    ),
                    tags: [
                        TagPill(
                            label: "Tag 1",
                            backgroundColor: XPEHO_THEME.GREEN_DARK_COLOR
                        ),
                        TagPill(
                            label: "Tag 2",
                            backgroundColor: XPEHO_THEME.GREEN_DARK_COLOR
                        ),
                        TagPill(
                            label: "Tag 3",
                            backgroundColor: XPEHO_THEME.GREEN_DARK_COLOR
                        )
                    ],
                    button: ClickyButton(
                        label: "Read",
                        horizontalPadding: 50,
                        verticalPadding: 12
                    ),
                    icon: AnyView(
                        newsletterIcon
                            .renderingMode(.template)
                            .foregroundStyle(XPEHO_THEME.XPEHO_COLOR)
                    )
                )
                CollapsableCard(
                    label: "Birthday of NAME",
                    tags: [
                        TagPill(
                            label: "__ MONTH",
                            backgroundColor: XPEHO_THEME.GREEN_DARK_COLOR
                        ),
                        TagPill(
                            label: "__ Y",
                            backgroundColor: XPEHO_THEME.GREEN_DARK_COLOR
                        )
                    ],
                    icon: AnyView(
                        birthdayIcon
                            .renderingMode(.template)
                            .foregroundStyle(XPEHO_THEME.XPEHO_COLOR)
                    ),
                    collapsable: false
                )
                CollapsableCard(
                    label: "Collapsable Card Customized",
                    headTag: TagPill(
                        label: "Head Tag",
                        backgroundColor: .white,
                        labelColor: XPEHO_THEME.RED_INFO_COLOR
                    ),
                    tags: [
                        TagPill(
                            label: "Tag Customized 1",
                            backgroundColor: .white,
                            labelColor: XPEHO_THEME.CONTENT_COLOR
                        ),
                        TagPill(
                            label: "Tag Customized 2",
                            backgroundColor: .white,
                            labelColor: XPEHO_THEME.CONTENT_COLOR
                        ),
                        TagPill(
                            label: "Tag Customized 3",
                            backgroundColor: .white,
                            labelColor: XPEHO_THEME.RED_INFO_COLOR
                        ),
                        TagPill(
                            label: "Tag Customized 4",
                            backgroundColor: .white,
                            labelColor: XPEHO_THEME.CONTENT_COLOR
                        )
                    ],
                    button: ClickyButton(
                        label: "Action",
                        horizontalPadding: 50,
                        verticalPadding: 12,
                        backgroundColor: XPEHO_THEME.RED_INFO_COLOR,
                        labelColor: .white
                    ),
                    icon: AnyView(
                        baseIcon
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                    ),
                    openArrowIcon: AnyView(
                        openArrowIcon
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                    ),
                    closeArrowIcon: AnyView(
                        closeArrowIcon
                            .renderingMode(.template)
                            .foregroundStyle(.white)
                    ),
                    labelColor: .white,
                    backgroundColor: XPEHO_THEME.CONTENT_COLOR
                )
                CollapsableCard(
                    label: "Collapsable Card Closed",
                    headTag: TagPill(
                        label: "Head Tag",
                        backgroundColor: XPEHO_THEME.GREEN_DARK_COLOR
                    ),
                    defaultOpen: false
                )
                
                Spacer()
            }
            .padding()
            .navigationTitle("CollapsableCard")
        }
        .background(XPEHO_THEME.BACKGROUND_COLOR.scaledToFill().edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    CollapsableCardView()
}
