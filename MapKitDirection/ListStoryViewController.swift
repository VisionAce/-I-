//
//  ListStoryViewController.swift
//  MapKitDirection
//
//  Created by 褚宣德 on 2017/6/21.
//  Copyright © 2017年 AppCoda. All rights reserved.
//

import UIKit
import AVFoundation

class ListStoryViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    
    
    var synthesizer:AVSpeechSynthesizer?
    var utterance:AVSpeechUtterance?
    
    
    
    @IBAction func clickMe(sender: AnyObject) {
        
        let content:String = petDesc[myIndex]
        if synthesizer!.isSpeaking{
            
            synthesizer!.stopSpeaking(at: AVSpeechBoundary.immediate)
            
        }else{
            utterance = AVSpeechUtterance(string: content)
            utterance!.voice = AVSpeechSynthesisVoice(language:"中文")
            utterance!.rate = 0.5
            synthesizer!.speak(utterance!)
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.title = pets[myIndex]
        descLabel.text = petDesc[myIndex]
        //        let size1:CGSize = petDesc[myIndex](font: UIFont.systemFont(ofSize: 14), constrainedToSize: CGSize(width:200, height:CGFloat(MAXFLOAT)))
        myImageView.image = UIImage(named: pets[myIndex])
        
        
        synthesizer = AVSpeechSynthesizer()
        utterance = AVSpeechUtterance(string: "")
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
