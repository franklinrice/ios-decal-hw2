//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var zeroButton: UIButton!
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    @IBOutlet var fourButton: UIButton!
    @IBOutlet var fiveButton: UIButton!
    @IBOutlet var sixButton: UIButton!
    @IBOutlet var sevenButton: UIButton!
    @IBOutlet var eightButton: UIButton!
    @IBOutlet var nineButton: UIButton!
    
    @IBOutlet var qButton: UIButton!
    @IBOutlet var wButton: UIButton!
    @IBOutlet var eButton: UIButton!
    @IBOutlet var rButton: UIButton!
    @IBOutlet var tButton: UIButton!
    @IBOutlet var yButton: UIButton!
    @IBOutlet var uButton: UIButton!
    @IBOutlet var iButton: UIButton!
    @IBOutlet var oButton: UIButton!
    @IBOutlet var pButton: UIButton!
    @IBOutlet var exclmButton: UIButton!
    
    @IBOutlet var aButton: UIButton!
    @IBOutlet var sButton: UIButton!
    @IBOutlet var dButton: UIButton!
    @IBOutlet var fButton: UIButton!
    @IBOutlet var gButton: UIButton!
    @IBOutlet var hButton: UIButton!
    @IBOutlet var jButton: UIButton!
    @IBOutlet var kButton: UIButton!
    @IBOutlet var lButton: UIButton!
    @IBOutlet var questButton: UIButton!
    
    @IBOutlet var zButton: UIButton!
    @IBOutlet var xButton: UIButton!
    @IBOutlet var cButton: UIButton!
    @IBOutlet var vButton: UIButton!
    @IBOutlet var bButton: UIButton!
    @IBOutlet var nButton: UIButton!
    @IBOutlet var mButton: UIButton!
    @IBOutlet var backspaceButton: UIButton!
    @IBOutlet var returnButton: UIButton!    
    @IBOutlet var spaceButton: UIButton!
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        loadTargets()
    }
    
    func loadTargets() {
        zeroButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        oneButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        twoButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        threeButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        fourButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        fiveButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        sixButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        sevenButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        eightButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        nineButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        qButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        wButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        eButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        rButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        tButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        yButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        uButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        iButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        oButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        pButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        aButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        sButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        dButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        fButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        gButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        hButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        jButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        kButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        lButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        zButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        xButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        cButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        vButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        bButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        nButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        mButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "returnPressed", forControlEvents: .TouchUpInside)
        questButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        exclmButton.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "spacePressed", forControlEvents: .TouchUpInside)
        backspaceButton.addTarget(self, action: "backspace", forControlEvents: .TouchUpInside)
        specialButtons()
    }
    
    func specialButtons() {
        returnButton.layer.cornerRadius = 5
        spaceButton.layer.cornerRadius = 5
        nextKeyboardButton.layer.cornerRadius = 5
    }
    
    func buttonPressed(sender: UIButton) {
        let proxy = self.textDocumentProxy
        let title = sender.currentTitle!
        proxy.insertText("\(title)")
    }
    func spacePressed() {
        self.textDocumentProxy.insertText(" ")
    }
    func returnPressed() {
        self.textDocumentProxy.insertText("\n")
    }
    func backspace() {
        self.textDocumentProxy.deleteBackward()
    }


}
