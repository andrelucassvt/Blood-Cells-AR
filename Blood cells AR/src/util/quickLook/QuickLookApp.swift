//
//  QuickLookApp.swift
//  Blood cells AR
//
//  Created by André  Lucas on 23/12/22.
//

import Foundation
import QuickLook
import ARKit
import SwiftUI
import RealityKit

class ARQLViewController: UIViewController, QLPreviewControllerDataSource {
    var cellEntity: CellEntity
    let allowsContentScaling = true
    let canonicalWebPageURL = URL(string: "https://github.com/andrelucassvt")
    
    init(cellEntity: CellEntity) {
        self.cellEntity = cellEntity
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidAppear(_ animated: Bool) {
        let previewController = QLPreviewController()
        previewController.dataSource = self
        present(previewController, animated: true, completion: nil)
    }

    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }

    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        guard let path = Bundle.main.path(forResource: cellEntity.referenceObj, ofType: "usdz") else {
            fatalError("Couldn't find the supported asset file.")
        }
        let url = URL(fileURLWithPath: path)
        let previewItem = ARQuickLookPreviewItem(fileAt: url)
        previewItem.allowsContentScaling = allowsContentScaling // default = true
        previewItem.canonicalWebPageURL = canonicalWebPageURL   // default = nil
        return previewItem
    }
}

struct ARQLView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ARQLViewController
    var cellEntity: CellEntity

    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    func makeUIViewController(context: Context) -> ARQLViewController {
        let viewController = ARQLViewController(cellEntity: cellEntity)
        return viewController
    }

    func updateUIViewController(_ uiViewController: ARQLViewController, context: Context) {
    }

    class Coordinator: NSObject {
        var parent: ARQLView
        init(_ parent: ARQLView) {
            self.parent = parent
        }
    }
}
