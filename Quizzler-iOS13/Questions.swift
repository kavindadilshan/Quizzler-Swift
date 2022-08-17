    //
    //  Questions.swift
    //  Quizzler-iOS13
    //
    //  Created by Ceyentra Technologies on 2022-08-17.
    //  Copyright © 2022 The App Brewery. All rights reserved.
    //

    import Foundation

    struct Questions {
        let questions : String
        let answer : String
        
        init(q : String , a : String) {
            questions=q
            answer=a
        }
    }
