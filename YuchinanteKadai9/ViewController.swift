//
//  ViewController.swift
//  
//  
//  Created by Yuchinante on 2024/02/26
//  
//

import UIKit

class ViewController: UIViewController {

    // 画面上の都道府県ラベル、未選択ラベル、入力ボタン
    @IBOutlet private weak var prefecturesLabel: UILabel!  // 都道府県ラベル
    @IBOutlet private weak var selectedLabel: UILabel!     // 未選択ラベル
    @IBOutlet private weak var selectButton: UIButton!     // 入力ボタン

    // 選択された都道府県を保持するプロパティ
    private var selectedPrefecture = ""

    // ユーザーが都道府県を選択するボタンがタップされた時の処理
    @IBAction private func didTapSelectButton(_ sender: Any) {
        // Main.storyboardからSelectViewControllerをインスタンス化して表示する
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let selectViewController = storyboard.instantiateViewController(withIdentifier: "SelectViewController") as? SelectViewController {
            selectViewController.delegate = self
            selectViewController.modalPresentationStyle = .fullScreen
            present(selectViewController, animated: true, completion: nil)
        }
    }
}

extension ViewController: SelectViewControllerDelegate {
    // SelectViewControllerDelegateプロトコルに準拠したメソッド：都道府県が選択された時に呼ばれる
    func didSelectPrefecture(_ selectedPrefecture: String) {
        self.selectedPrefecture = selectedPrefecture
        selectedLabel.text = selectedPrefecture
    }
}
