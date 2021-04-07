//
//  CCZoomTransitioner.swift
//  CCGitHubPro
//
//  Created by bo on 20/12/2016.
//  Copyright © 2016 bo. All rights reserved.
//

import UIKit

open class CCZoomTransitioner : NSObject, UIViewControllerTransitioningDelegate {
    
    var transitOriginalView : UIView? = nil
    
    var presentationController : CCSwipBackPresentationController? = nil
    
    var swipeBackDisabled : Bool = false
    
    
    open func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let trans = CCZoomAnimatedTransitioning()
        trans.transitOriginalView = self.transitOriginalView;
        trans.isPresentation = true;
        return trans;
    }
    
    open func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let trans = CCZoomAnimatedTransitioning()
        trans.transitOriginalView = self.transitOriginalView;
        trans.isPresentation = false;
        return trans;
    }
    
    open func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return self.presentationController?.swipBackTransitioning
    }
    
    open func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        self.presentationController = CCSwipBackPresentationController.init(presentedViewController: presented, presenting: presenting)
        return self.presentationController
    }
}
