//
//  HomeViewController.swift
//  TabAndSlide
//
//  Created by Halil on 4.03.2022.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        let slides:[Slide] = createSlides()
        setupSlideScrollView(slides: slides)
        
        pageControl.numberOfPages = slides.count
        pageControl.currentPage = 0

        // Do any additional setup after loading the view.
    }
    
    private func createSlides() -> [Slide] {
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.backgroundColor = UIColor.systemTeal
        slide1.imageView.image = UIImage(named: "Mario")
        slide1.titleLabel.text = "Mario"
        slide1.contentLabel.text = "He is our main character."
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.backgroundColor = UIColor.darkGray
        slide2.imageView.image = UIImage(named: "Luigi")
        slide2.titleLabel.text = "Luigi"
        slide2.contentLabel.text = "He is brother of Mario."
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.backgroundColor = UIColor.brown
        slide3.imageView.image = UIImage(named: "PrincessPeach")
        slide3.titleLabel.text = "Princess Peach"
        slide3.contentLabel.text = "She is the Princess of Mushroom Kingdom."
        return [slide1,slide2,slide3]
    }
    
    private func setupSlideScrollView(slides:[Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
        
    }
    
    private func didScrolled(_ scrollView: UIScrollView){
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
