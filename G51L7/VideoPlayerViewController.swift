//
//  VideoPlayerViewController.swift
//  G51L7
//
//  Created by Ivan Vasilevich on 2/28/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit
import AVFoundation

class VideoPlayerViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL.init(string: "https://www.youtube.com/embed/2zEbcAuAq3s")!
        let urlReq = URLRequest.init(url: url)
        webView.loadRequest(urlReq)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let phrase = "Что я делаю когда разговаривают во время урока the fact is none: господин ебашит по столу рукой"
        let synthesizer = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: phrase)
        utterance.rate = 0.4
        print(NSLocale.isoCurrencyCodes)
        print(NSLocale.current)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        synthesizer.speak(utterance)
    }

}
