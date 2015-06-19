//
//  ViewController.swift
//  Horoscope
//
//  Created by MAEDA HAJIME on 2014/06/07.
//  Copyright (c) 2014年 MAEDA HAJIME. All rights reserved.
//
//  星座表示

import UIKit

class ViewController: UIViewController {
    
    // 月フィールド
    @IBOutlet var tfMon : UITextField!
    // 日フィールド
    @IBOutlet var tfDay : UITextField!
    // 星座表示ディスプレイ
    @IBOutlet var lbDisp : UILabel!
    // 星座画像表示
    @IBOutlet var imHoro : UIImageView!
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 星座画像表示 初期値空
        imHoro.image = nil;

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 星座判定ボタンを押した時
    @IBAction func selctSeiza(sender : AnyObject) {
        
        // 入力値の取得 定数の型はString型に
        let tuki:String = tfMon.text; //String型
        let hi:String   = tfDay.text;
        
        // 文字 -> 数字変換
        let mm = tuki.toInt()!
        let dd = hi.toInt()!

        // 月を100倍して日をたす 数字として算出する
        var mmdd = mm * 100 + dd;
        
        // NSlog
        println("自己紹介文の表示")
        
        // 星座判定 3月21日から3月31日以下 または 4月1日から4月19日まで
        if ((mmdd >= 321 && mmdd <= 331) ||
            (mmdd >= 401 && mmdd <= 419)) {

                //星座の表示
                setSeiza("牡羊座", fileName: "z0001")

                
        } else if ((mmdd >= 421 && mmdd <= 430) ||
            (mmdd >= 501 && mmdd <= 519)) {
                
                //星座の表示
                setSeiza("おうし座", fileName: "z0002")
                
        } else if ((mmdd >= 521 && mmdd <= 531) ||
            (mmdd >= 601 && mmdd <= 619)) {
                
                //星座の表示
                setSeiza("ふたご座", fileName: "z0003")
                
        } else if ((mmdd >= 621 && mmdd <= 630) ||
            (mmdd >= 701 && mmdd <= 719)) {
                
                //星座の表示
                setSeiza("かに座", fileName: "z0004")
                
        } else if ((mmdd >= 721 && mmdd <= 731) ||
            (mmdd >= 801 && mmdd <= 819)) {
                
                //星座の表示
                setSeiza("しし座", fileName: "z0005")
                
        } else if ((mmdd >= 821 && mmdd <= 831) ||
            (mmdd >= 901 && mmdd <= 919)) {
                
                //星座の表示
                setSeiza("おとめ座", fileName: "z0006")
                
        } else if ((mmdd >= 921 && mmdd <= 930) ||
            (mmdd >= 1001 && mmdd <= 1019)) {
                
                //星座の表示
                setSeiza("てんびん座", fileName: "z0007")
                
        } else if ((mmdd >= 1021 && mmdd <= 1031) ||
            (mmdd >= 1101 && mmdd <= 1119)) {
                
                //星座の表示
                setSeiza("さそり座", fileName: "z0008")
                
        } else if ((mmdd >= 1121 && mmdd <= 1130) ||
            (mmdd >= 1201 && mmdd <= 1219)) {
                
                //星座の表示
                setSeiza("いて座", fileName: "z0009")
                
        } else if ((mmdd >= 1221 && mmdd <= 1231) ||
            (mmdd >= 101 && mmdd <= 119)) {
                
                //星座の表示
                setSeiza("やぎ座", fileName: "z0010")
                
        } else if ((mmdd >= 121 && mmdd <= 131) ||
            (mmdd >= 201 && mmdd <= 219)) {
                
                //星座の表示
                setSeiza("みずがめ座", fileName: "z0011")
                
        } else if ((mmdd >= 221 && mmdd <= 228) ||
            (mmdd >= 301 && mmdd <= 319)) {
                
                //星座の表示
                setSeiza("うお座", fileName: "z0012")
                
        } else {
            // 該当しない場合
            lbDisp.text = "日付が不正です。"
            // 該当しない場合は空白(nil)を表示
            imHoro.image = nil;
        }
        
        // キーボードを隠す
        tfMon.resignFirstResponder()
        tfDay.resignFirstResponder()
        
    }
    
    // 星座の表示メソッド 引数２つ dispName:星座名　fileName:星座画像
    func setSeiza(dispName:String, fileName:String)
    {
        // 星座名
        lbDisp.text = dispName;
        
        // 星座画像
        imHoro.image = UIImage(named:fileName)
        
        //println("引数二つ、返り値  " + dispName + fileName)
    }

}

