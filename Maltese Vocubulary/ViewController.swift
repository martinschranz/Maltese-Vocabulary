//
//  ViewController.swift
//  kians
//
//  Created by Mark Schranz on 24/10/2018.
//  Copyright © 2018 Mark Schranz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var toptitle: UITextField!
    @IBOutlet weak var dog: UIButton!
    @IBOutlet weak var topbutton: UIButton!
    @IBOutlet weak var bottombutton: UIButton!
    @IBOutlet weak var correct: UITextField!
    @IBOutlet weak var easy: UILabel!
    @IBOutlet weak var slideme: UISlider!
    @IBOutlet weak var hard: UILabel!
    

override func viewDidLoad() {
changepicture(); super.viewDidLoad()
}

    
func congratulateme()
{correct.text?.append("✅")
myarrays.score=myarrays.score+1
if myarrays.b3==0
{topbutton.setTitleColor(UIColor.purple, for: .normal)
topbutton.backgroundColor=UIColor.green
}else{bottombutton.setTitleColor(UIColor.purple,for: .normal)
bottombutton.backgroundColor=UIColor.green}
if (myarrays.loosescore+myarrays.score)>myarrays.nos
{if (myarrays.loosescore<1){myarrays.level=myarrays.level+1
if myarrays.level==4{correct.text="Champion! 🏆 Start again"
myarrays.level=1}else{
correct.text="Perfect score! Start level \(myarrays.level)"}
myarrays.loosescore=0
myarrays.score=0
if myarrays.level==4{self.toptitle.text="Level 1"}
else{self.toptitle.text="Level \(myarrays.level)"}
DispatchQueue.main.asyncAfter(deadline: .now()+1){self.changepicture()}} else {correct.text="You got \(myarrays.loosescore) wrong. Try again !"
myarrays.loosescore=0
myarrays.score=0
myarrays.b3=3
DispatchQueue.main.asyncAfter(deadline: .now()+1){self.changepicture()}
 } }else {DispatchQueue.main.asyncAfter(deadline: .now()+1){self.changepicture()}}}
    


func punishme()
{correct.text?.append("❌")
myarrays.loosescore=myarrays.loosescore+1
if myarrays.b3==1
{topbutton.setTitleColor(UIColor.purple, for: .normal)
topbutton.backgroundColor=UIColor.red}else
{bottombutton.setTitleColor(UIColor.purple,for: .normal)
bottombutton.backgroundColor=UIColor.red }
if(myarrays.loosescore>0)&&((myarrays.loosescore+myarrays.score)>myarrays.nos){correct.text="You got \(myarrays.loosescore) wrong. Try again!"
myarrays.loosescore=0
myarrays.score=0
myarrays.b3=3
DispatchQueue.main.asyncAfter(deadline: .now()+1){self.changepicture()}}
else {DispatchQueue.main.asyncAfter(deadline: .now()+1){self.changepicture()}}}

    
@IBAction func slide(_ sender: UISlider) {
        var nose=Int(sender.value)
        myarrays.nos=nose
        print(myarrays.nos)
    }

@IBAction func doggy(_ sender: UIButton) {
    }
    
    
@IBAction func top(_ sender: UIButton) {
topbutton.isUserInteractionEnabled=false
bottombutton.isUserInteractionEnabled=false
if (myarrays.score==0&&myarrays.loosescore==0) {correct.text=""}
        correct.isHidden=false
        if myarrays.b3==0
        {congratulateme()} else {punishme()}
        }
    
    
@IBAction func bottom(_ sender: UIButton) {
topbutton.isUserInteractionEnabled=false
bottombutton.isUserInteractionEnabled=false
if (myarrays.score==0&&myarrays.loosescore==0) {correct.text=""}
        correct.isHidden=false
        if myarrays.b3==1
        {congratulateme()} else {punishme()}
        }
    
func changepicture() {
        topbutton.isUserInteractionEnabled=true
        bottombutton.isUserInteractionEnabled=true
        topbutton.setTitleColor(UIColor.yellow, for: .normal)
        bottombutton.setTitleColor(UIColor.yellow,for: .normal)
        topbutton.backgroundColor=UIColor.blue
        bottombutton.backgroundColor=UIColor.blue
        if (myarrays.score==0&&myarrays.loosescore==0&&myarrays.level==1&&myarrays.b3==3)
        {correct.text=""}
        if (myarrays.score==0&&myarrays.loosescore==0)
        {slideme.isHidden=false
            easy.isHidden=false
            hard.isHidden=false
        }
        else
        {slideme.isHidden=true
            easy.isHidden=true
            hard.isHidden=true
        }
var pictures=myarrays.pictures
        
if myarrays.level==2 {pictures=myarrays.pictures_level2}
if myarrays.level==3 {pictures=myarrays.pictures_level3}
var words=myarrays.words
if myarrays.level==2 {words=myarrays.words_level2}
var words2=myarrays.words2
var words3=myarrays.words3
var between2=Int(arc4random_uniform(2))
var ranpic:Int=Int(arc4random_uniform(UInt32(myarrays.pictures.count)))
dog.setTitle(pictures[ranpic], for: .normal)
    
  
if between2==0
 { myarrays.b3=0
if myarrays.level==3
   { bottombutton.setTitle(words2[ranpic], for: .normal)
    topbutton.setTitle(words3[ranpic], for: .normal)  }
                
 else {
topbutton.setTitle(words[ranpic], for: .normal)
words.remove(at:ranpic)
var ranpic2:Int=Int(arc4random_uniform(UInt32(words.count)))
bottombutton.setTitle(words[ranpic2], for: .normal)}
        }
        
if between2==1
{ myarrays.b3=1
if myarrays.level==3
   { bottombutton.setTitle(words3[ranpic], for: .normal)
    topbutton.setTitle(words2[ranpic], for: .normal)  }
else {bottombutton.setTitle(words[ranpic], for: .normal)
words.remove(at:ranpic)
var ranpic2:Int=Int(arc4random_uniform(UInt32(words.count)))
topbutton.setTitle(words[ranpic2], for: .normal)}
        }
    }
    
    
}
