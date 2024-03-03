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
    func didSelectPrefecture(_ selectedPrefecture: String)  // didSelectPrefectureメソッドを定義
}

// SelectViewController: 都道府県を選択する画面のViewController
class SelectViewController: UIViewController {
    //各都道府県のボタン
    @IBOutlet private weak var tokyoButton: UIButton!     // 東京都ボタン
    @IBOutlet private weak var kanagawaButton: UIButton!  // 神奈川県ボタン
    @IBOutlet private weak var saitamaButton: UIButton!   // 埼玉県ボタン
    @IBOutlet private weak var chibaButton: UIButton!     // 千葉県ボタン

    // デリゲートに選択された都道府県を通知
    weak var delegate: SelectViewControllerDelegate?  // 選択された都道府県を通知するデリゲート

    @IBAction private func didTapTokyoButton(_ sender: Any) {
        didSelectPrefecture(name: "東京都")  // 選択された都道府県を通知
    }
    
    @IBAction func didTapKanagawaButton(_ sender: Any) {
        didSelectPrefecture(name: "神奈川県")  // 選択された都道府県を通知
    }

    @IBAction func didTapSaitamaButton(_ sender: Any) {
        didSelectPrefecture(name: "埼玉県")  // 選択された都道府県を通知

    }

    @IBAction func didTapChibaButton(_ sender: Any) {
        didSelectPrefecture(name: "千葉県")  // 選択された都道府県を通知
    }


    //Cancelボタン
    @IBAction private func didTapCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)  // モーダルを閉じる
    }

    // 選択された都道府県をデリゲートに通知し、モーダルを閉じる
    private func didSelectPrefecture(name: String) {
        delegate?.didSelectPrefecture(name)
        dismiss(animated: true, completion: nil)
    }
}
