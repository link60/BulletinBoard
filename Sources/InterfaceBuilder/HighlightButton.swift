/**
 *  BulletinBoard
 *  Copyright (c) 2017 - present Alexis Aubry. Licensed under the MIT license.
 */

import UIKit

/**
 * A button that provides a visual feedback when the user interacts with it.
 *
 * This style of button works best with a solid background color. Use the `setBackgroundColor`
 * function on `UIButton` to set one.
 */

class HighlightButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureHighlighting()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureHighlighting()
    }
    
    private func configureHighlighting() {
        addTarget(self, action: #selector(highlight), for: [.touchUpInside, .touchDragEnter])
        addTarget(self, action: #selector(unhighlight), for: [.touchUpInside, .touchDragExit])
    }
    
    @objc private func highlight() {
        // Bouton en verre : il a son propre retour tactile, et un alpha < 1 casserait l'effet.
        guard configuration == nil else { return }

        let animations = {
            self.alpha = 0.5
        }

        UIView.transition(with: self, duration: 0.1, animations: animations)
    }
    
    @objc private func unhighlight() {
        guard configuration == nil else { return }

        let animations = {
            self.alpha = 1
        }

        UIView.transition(with: self, duration: 0.1, animations: animations)
    }
}
