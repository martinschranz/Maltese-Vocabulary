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
    
    var beet=1
    var b3=0
    var score=0
    var loosescore=0
    var level = 1
    
    
 @IBAction func doggy(_ sender: UIButton) {
    
    
    }
    
    
override func viewDidLoad() {
changepicture(); super.viewDidLoad()
}
    
    
    
func changepicture() {
topbutton.isUserInteractionEnabled=true
bottombutton.isUserInteractionEnabled=true
        if (self.score==0&&self.loosescore==0&&self.level==1&&self.b3<1)
   {correct.text=""}
 var pictures=["🐝","🚕","⛵️","⚽️","✈️","⚓️","🗽","⛺️","🔨","🎈","🛁","💊","🎀","🛎","🛏","☁️","🏍","🚲","🕯","🎁","💣","🚪","✉️","📙","🎧","🍺","🐑","🧢","👓"]
        
if level==2 {pictures=["🚰","✂️","🐌","🍓","🥁","⚓️","🔌","🔨","🛁","🔑","🛏","🐀","🍐","🔦","🚧","🛢","🗡","🎯","🌽","🐊","🍄","🌈","🍑","🐙","😡","😭","☺️","👅","🧠"]}
    
if level==3 {pictures=["🐝","🚕","⛵️","⚽️","✈️","⚓️","🗽","⛺️","🔨","🎈","🛁","💊","🎀","🛎","🛏","☁️","🏍","🚲","🕯","🎁","💣","🚪","✉️","📙","🎧","🍺","🐑","🧢","👓","🚰","✂️","🐌","🍓","🥁","⚓️","🔌","🔨","🛁","🔑","🛏","🐀","🍐","🔦","🚧","🛢","🗡","🎯","🌽","🐊","🍄","🌈","🍑","🐙","😡","😭","☺️","👅","🧠"]}
        
        
var words=["żunżana","karozza","dgħajsa","ballun","ajruplan","ankra","statwa","tinda","martell","bużżieqa","banju","pillola","coff","qanpiena","sodda","sħaba","mutur","rota","xemgħa","rigal","bomba","bieb","ittra","ktieb","ħedfown","birra","nagħga","kappell","nuccali"]
    
 if level==2 {words=["vit","imqas","bebbux","frawli","tambur","sorġitur","plagg","issossa","hassula","muftieh","mifrex","ġurdien","lanġasa","torca","tabella","bettija","stallett","matra","qamħ","kukkudrill","faqqiegħ","qawsalla","ħawħa","qarnit","irrabjat","titnis","taħmir","lsien","moħħ"]}
    
    
    
var words2=["żanżana","karrozza","dagħjsa","balun","arjuplan","masra","statura","tenta","martel","bżieqa","bunju","pinnola","bowta","qampielina","soda","sħabha","mutura","rewta","xemgha","rigħal","bhomba","bib","itra","ktib","ħedfon","brewa","nhaġa","kappel","nucali","rosta","katretta","bebbiexa","langasa","trabett","sorġitura","luggija","soddija","ħawlata","kiefra","saqqa","wurdien","lancasa","dawwala","tebut","buttiegħa","statwetta","mitra","qremla","kukudril","faccieħ","qawella","purnata","qawsalla","irabjat","rafasa","ħmurija","lingwa","moħ"]
    
var words3=["żunżana","karozza","dgħajsa","ballun","ajruplan","ankra","statwa","tinda","martell","bużżieqa","banju","pillola","coff","qanpiena","sodda","sħaba","mutur","rota","xemgħa","rigal","bomba","bieb","ittra","ktieb","ħedfown","birra","nagħġa","kappell","nuccali","vit","imqas","bebbux","frawli","tambur","sorġitur","plagg","issossa","hassula","muftieh","mifrex","ġurdien","lanġasa","torca","tabella","bettija","stallett","matra","qamħ","kukkudrill","faqqiegħ","qawsalla","ħawħa","qarnit","irrabjat","titnis","taħmir","lsien","moħħ" ]
    
var between2=Int(arc4random_uniform(2))
var ranpic:Int=Int(arc4random_uniform(UInt32(pictures.count)))
dog.setTitle(pictures[ranpic], for: .normal)
        
        
if between2==0
        {
            
            self.b3=0
           
if level==3
{

    bottombutton.setTitle(words2[ranpic], for: .normal)
    topbutton.setTitle(words3[ranpic], for: .normal)  }

else {
    
    topbutton.setTitle(words[ranpic], for: .normal)
    words.remove(at:ranpic)
    
    var ranpic2:Int=Int(arc4random_uniform(UInt32(words.count)))
    bottombutton.setTitle(words[ranpic2], for: .normal)}
        }
        
if between2==1
        {
            
            self.b3=1
            
if level==3
{
  
    bottombutton.setTitle(words3[ranpic], for: .normal)
    topbutton.setTitle(words2[ranpic], for: .normal)
}


else {bottombutton.setTitle(words[ranpic], for: .normal)
    words.remove(at:ranpic)
var ranpic2:Int=Int(arc4random_uniform(UInt32(words.count)))
    topbutton.setTitle(words[ranpic2], for: .normal)}
    
        }
        
    }
    
  
    
@IBAction func top(_ sender: UIButton) {

topbutton.isUserInteractionEnabled=false
bottombutton.isUserInteractionEnabled=false
if (self.score==0&&self.loosescore==0) {correct.text=""}
correct.isHidden=false
if self.b3==0
{congratulateme()} else {punishme()}

    }
    
   
@IBAction func bottom(_ sender: UIButton) {
topbutton.isUserInteractionEnabled=false
bottombutton.isUserInteractionEnabled=false
if (self.score==0&&self.loosescore==0) {correct.text=""}
correct.isHidden=false
if self.b3==1
{congratulateme()} else {punishme()}

    }
    
func congratulateme()
{correct.text?.append("✅")
self.score=score+1
print("loosescore : ",loosescore)
print("score : ",score)
print("loosescore+score : ",self.loosescore+self.score)
if (loosescore+score)>2
{
if (loosescore<1){
self.level=level+1
correct.text="Perfect score! Start level \(self.level)"
            self.loosescore=0
            self.score=0
            
            self.toptitle.text="Level \(self.level)"
            self.changepicture()
        } else {correct.text="You got \(self.loosescore) wrong. Try again !"
            self.loosescore=0
            self.score=0
            self.b3=3
            self.changepicture()
            }
        }
        else {
            DispatchQueue.main.asyncAfter(deadline: .now()+1){self.changepicture()}
            
            
            
        }
    }
    
    func punishme()
    {correct.text?.append("❌")
        self.loosescore=loosescore+1
        if (loosescore>0)&&((loosescore+self.score)>2){correct.text="You got \(self.loosescore) wrong. Try again!"
            self.loosescore=0
            self.score=0
            self.b3=3
            changepicture()
        }
        else {
            DispatchQueue.main.asyncAfter(deadline: .now()+1){self.changepicture()}
            
            
            
        }
    }
    
    
}
