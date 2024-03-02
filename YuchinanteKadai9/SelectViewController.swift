//
//  SelectViewController.swift
//  YuchinanteKadai9
//  
//  Created by Yuchinante on 2024/02/27
//  
//

import UIKit

// SelectViewControllerDelegateプロトコル: 都道府県が選択されたときに通知を受け取るデリゲート
protocol SelectViewControllerDelegate: AnyObject {
    func didSelectPrefecture(_ selectedPrefecture: String)
}

// SelectViewController: 都道府県を選択する画面のViewController
class SelectViewController: UIViewController {
    // 各都道府県のボタン
    @IBOutlet private weak var tokyoButton: UIButton!
    @IBOutlet private weak var kanagawaButton: UIButton!
    @IBOutlet private weak var saitamaButton: UIButton!
    @IBOutlet private weak var chibaButton: UIButton!

    // デリゲートに選択された都道府県を通知
    weak var delegate: SelectViewControllerDelegate?

    @IBAction private func didTapTokyoButton(_ sender: Any) {
        didSelectPrefecture(name: "東京都")
    }

    @IBAction private func didTapKanagawaButton(_ sender: Any) {
        didSelectPrefecture(name: "神奈川県")
    }

    @IBAction private func didTapSaitamaButton(_ sender: Any) {
        didSelectPrefecture(name: "埼玉県")
    }

    @IBAction private func didTapChibaButton(_ sender: Any) {
        didSelectPrefecture(name: "千葉県")
    }

    // Cancelボタン
    @IBAction private func didTapCancelButton(_ sender: Any) {
        // モーダルを閉じる
        dismiss(animated: true, completion: nil)
    }

    private func didSelectPrefecture(name: String) {
        delegate?.didSelectPrefecture(name)
        dismiss(animated: true, completion: nil)
    }
}
