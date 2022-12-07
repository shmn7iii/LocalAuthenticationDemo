//
//  LocalAuth.swift
//  LocalAuthenticationDemo
//
//  Created by shmn7iii on 2022/12/07.
//

import Foundation
import LocalAuthentication

class LocalAuth {
    let context = LAContext()
    let localizedReason = "生体認証を起動します。"

    func evaluate(complation:@escaping(String) -> Void) {
        context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: localizedReason, reply:  { success, error in
            if success {
                DispatchQueue.main.async {
                    complation("認証に成功しました。")
                }
            } else if let laError = error as? LAError {
                complation("\(laError.code)\n認証に失敗しました。")
            }
        })
    }
}
