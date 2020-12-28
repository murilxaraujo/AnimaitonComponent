import Beagle
import Lottie

class AnimationComponent: Widget {
    var widgetProperties: WidgetProperties
    
    var animationView: AnimationView
    
    init() {
        animationView = AnimationView()
    }
    
    func toView(renderer: BeagleRenderer) -> UIView {
        return UIView()
    }
}
