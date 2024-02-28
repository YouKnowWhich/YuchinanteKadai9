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
    //各都道府県のボタン
    @IBOutlet weak var tokyoButton: UIButton!
    @IBOutlet weak var kanagawaButton: UIButton!
    @IBOutlet weak var saitamaButton: UIButton!
    @IBOutlet weak var chibaButton: UIButton!

    // 選択された都道府県を保持するプロパティ
    var selectedPrefecture = ""
    // デリゲートに選択された都道府県を通知
    weak var delegate: SelectViewControllerDelegate?

    @IBAction func didTapTokyoButton(_ sender: Any) {
        // 東京都が選択された
        selectedPrefecture = "東京都"
        // デリゲートに選択された都道府県を通知
        delegate?.didSelectPrefecture(selectedPrefecture)
        // モーダルを閉じる
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapKanagawaButton(_ sender: Any) {
        selectedPrefecture = "神奈川県"
        delegate?.didSelectPrefecture(selectedPrefecture)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapSaitamaButton(_ sender: Any) {
        selectedPrefecture = "埼玉県"
        delegate?.didSelectPrefecture(selectedPrefecture)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapChibaButton(_ sender: Any) {
        selectedPrefecture = "千葉県"
        delegate?.didSelectPrefecture(selectedPrefecture)
        self.dismiss(animated: true, completion: nil)
    }


    //Cancelボタン
    @IBAction func didTapCancelButton(_ sender: Any) {
        // モーダルを閉じる
        self.dismiss(animated: true, completion: nil)
    }
}
