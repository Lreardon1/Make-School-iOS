//
//  DisplayNoteViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

protocol PokemonDelegate {
    func didSelectPokemon(pokemon: Note)
}

class DisplayNoteViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    var note: Note?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        titleTextField.layer.borderWidth = 1
        titleTextField.layer.borderColor = #colorLiteral(red: 0.4182564445, green: 0.9050452494, blue: 0.863285644, alpha: 1)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let note = note {
            titleTextField.text = note.title
            contentTextView.text = note.content
        } else {
            titleTextField.text = ""
            contentTextView.text = ""
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "save" where note != nil:
            CoreDataHelper.deleteNote(note: note!)
            let newNote = CoreDataHelper.newNote()
            
            newNote.title = titleTextField.text ?? ""
            newNote.content = contentTextView.text ?? ""
            newNote.modificationTime = Date()
            
            CoreDataHelper.saveNote()
            
        case "save" where note == nil:
            let note = CoreDataHelper.newNote()
            note.title = titleTextField.text ?? ""
            note.content = contentTextView.text ?? ""
            note.modificationTime = Date()
            
            CoreDataHelper.saveNote()
            
        case "cancel":
            print("cancel bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
    }
    
}
