/**
 *  BulletinBoard
 *  Copyright (c) 2017 - present Alexis Aubry. Licensed under the MIT license.
 */

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {}

/// Le SDK 27 impose le cycle de vie UIScene : sans lui, l'app s'arrête au lancement.
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
}
