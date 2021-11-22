//
//  ViewController.swift
//  Mangina_TableViewDisplay
//
//  Created by JayaShankar Mangina on 11/15/21.
//

import UIKit

struct Product{
    var title: String
    var products: [String]
    var image: [UIImage?]
    var prodImgInfo: [String]
}

var ListArray:[Product] = [
    
    Product(
        
        title: "MacBook Softwares",
        
        products: ["XCode","FinalCut Pro","GarageBand","Finder","Dock"],
        
        image: [
            
            UIImage(named: "xCode"),
            UIImage(named: "finalCutPro"),
            UIImage(named: "garageband"),
            UIImage(named: "macFinder"),
            UIImage(named: "macOsDock")
            
        ],
        
        prodImgInfo: [
            
            "An IDE developed by Apple Inc. Widely used for application development of iOS,macOS,watchOS,tvOS,iPadOS,homePodOS",
            
            "An Application Software developed by Apple. Widely used for Professional Video Editing in industries.",
            
            "An Apple app that provides the easiest way to record and create original music on your Mac, iPhone, or iPad",
            
            "The Finder is the default file manager and graphical user interface shell used on all Macintosh operating systems. It is responsible for the launching of other applications, and for the overall user management of files, disks, and network volumes",
            
            "The Dock is a prominent feature of the graphical user interface of macOS. It is used to launch applications and to switch between running applications"]),
    
    Product(
        
        title: "Super Cars",
        
        products: ["Bugatti","Maserati","WMotors","Ferrari","Aston Martin"],
        
        image: [
            
            UIImage(named: "bugatti"),
            UIImage(named: "maserati"),
            UIImage(named: "lycan"),
            UIImage(named: "ferrari"),
            UIImage(named: "astonMartin")
        
        ],
        
        prodImgInfo: [
            
            "The CHIRON is the fastest, most powerful, and exclusive production super sports car in BUGATTI’s history. Its sophisticated design, innovative technology, and iconic, performance-oriented form make it a unique masterpiece of art, form and technique, that pushes boundaries beyond imagination.",
                      
            "Maserati MC20 is the first super sports car of the Trident Brand. Discover now its ingenious technologies for outstanding speed",
                      
            "The first hypercar created by W Motors, the Lykan HyperSport, catapulted the company to international stardom when it took center stage in Universal Studios' Furious 7",
                      
            "The Ferrari 812 Superfast[6] (Type F152M) is a front mid-engine, rear-wheel-drive grand tourer produced by Italian sports car manufacturer Ferrari that made its debut at the 2017 Geneva Motor Show. The 812 Superfast is the successor to the F12berlinetta.",
            
            "Standard-bearer for an all-new generation of cars, DB11 is the most powerful and efficient ‘DB’ production model in Aston Martin’s history."]),
    
    Product(
        
        title: "Marvel SuperHeros",
        
        products: ["IronMan","Spider-Man","Thor","Hulk","Dr.Strange"],
        
        image: [
            
            UIImage(named: "ironMan"),
            UIImage(named: "spiderman"),
            UIImage(named: "thor"),
            UIImage(named: "hulk"),
            UIImage(named: "drStrange")
        
        ],
        
        prodImgInfo: [
            
            "Iron Man is a superhero appearing in American comic books published by Marvel Comics. A wealthy American business magnate, playboy, philanthropist, inventor and ingenious scientist, Anthony Edward 'Tony' Stark suffers a severe chest injury during a kidnapping. When his captors attempt to force him to build a weapon of mass destruction, he instead creates a mechanized suit of armor to save his life and escape captivity. He uses the suit and successive versions to protect the world as Iron Man.",
            
            "Spider-Man is a superhero created by writer-editor Stan Lee and writer-artist Steve Ditko. Spider-Man is the alias of Peter Parker, an orphan raised by his Aunt May and Uncle Ben in New York City after his parents Richard and Mary Parker died in a plane crash. In his origin story, he gets spider-related abilities from a bite from a radioactive spider; these include clinging to surfaces, superhuman strength and agility, and detecting danger with his 'spider-sense'. He also builds wrist-mounted 'web-shooter' devices that shoot artificial spider webs of his own design.",
            
            "Thor Odinson, or simply Thor, is a fictional character appearing in American comic books published by Marvel Comics. The character is based on the Norse deity of the same name, the Asgardian god of thunder whose enchanted hammer Mjolnir enables him to fly and manipulate weather, among his other superhuman attributes.Debuting in the Silver Age of Comic Books, the character first appeared in Journey into Mystery #83 (August 1962) and was created by artist Jack Kirby, writer Stan Lee, and Stan's little brother' scripter Larry Lieber. The character is a founding member of the superhero team the Avengers.",
            
            "The Hulk is a fictional superhero appearing in publications by the American publisher Marvel Comics. Following his accidental exposure to gamma rays saving the life of Rick Jones during the detonation of an experimental bomb, Banner is physically transformed into the Hulk when subjected to emotional stress, at or against his will, often leading to destructive rampages and conflicts that complicate Banner's civilian life. The Hulk's level of strength is normally conveyed as proportionate to his level of anger. However, his uncontrollable power has brought him into conflict with his fellow heroes and others. Despite this, he tries his best to do what's right while battling villains such as Leader, Abomination, Absorbing Man and more.",
            
            "Doctor Stephen Strange is a fictional character appearing in American comic books published by Marvel Comics. Doctor Strange serves as the Sorcerer Supreme, the primary protector of Earth against magical and mystical threats. The character begins as an extremely talented but egotistical surgeon who loses the ability to operate after a car crash severely damages his hands beyond repair. Searching the globe for healing, he encounters the Ancient One, the Sorcerer Supreme. Strange becomes his student, and learns to be a master of both the mystical and the martial arts. He acquires an assortment of mystical objects, including the powerful Eye of Agamotto and Cloak of Levitation. Strange assumes the title of Sorcerer Supreme and, with his friend and valet Wong, defends the world from mystical threats."]),
    
    Product(
        
        title: "TV Series",
        
        products: [
            
            "Silicon Valley",
            "Mr.Robot",
            "The Flash",
            "BlackList",
            "Tehran"
        ],
        
        image: [
            
            UIImage(named: "siliconValley"),
            UIImage(named: "mrRobot"),
            UIImage(named: "flash"),
            UIImage(named: "blacklist"),
            UIImage(named: "tehran")
        
        ],
        
        prodImgInfo: [
            
            "Silicon Valley is an American comedy television series created by Mike Judge, John Altschuler and Dave Krinsky. The series, a parody of Silicon Valley culture, focuses on Richard Hendricks (Thomas Middleditch), a programmer who founds a startup company called Pied Piper, and chronicles his struggles trying to maintain his company while facing competition from larger entities.",
            
            "Mr. Robot is an American drama thriller television series created by Sam Esmail for USA Network. It stars Rami Malek as Elliot Alderson, a cybersecurity engineer and hacker with social anxiety disorder and clinical depression. Elliot is recruited by an insurrectionary anarchist known as 'Mr. Robot', to join a group of hacktivists called 'fSociety'. The group aims to destroy all debt records by encrypting the financial data of E Corp, the largest conglomerate in the world.",
            
            "The Flash is an American superhero television drama series developed by Greg Berlanti, Andrew Kreisberg, and Geoff Johns, airing on The CW. It is based on the Barry Allen incarnation of DC Comics character the Flash, a costumed superhero crime-fighter with the power to move at superhuman speeds. The series follows Barry Allen, portrayed by Grant Gustin, a crime scene investigator who gains super-human speed, which he uses to fight criminals, including others who have also gained superhuman abilities",
            
            "The Blacklist is an American crime thriller television series that premiered on NBC. The show follows Raymond 'Red' Reddington (James Spader), a former U.S. Navy officer turned high-profile criminal who voluntarily surrenders to the FBI after eluding capture for decades. He tells the FBI that he has a list of the most dangerous criminals in the world which he has compiled over the years, and he is willing to inform on their operations in exchange for immunity from prosecution. However, he insists on working exclusively with rookie FBI profiler Elizabeth Keen (Megan Boone).",
            
            "Tehran is an Israeli spy thriller television series created by Moshe Zonder. Protagonist Tamar Rabinyan, a young Jewish woman born in Iran but raised in Israel, is a Mossad agent and computer hacker on an undercover mission in the Iranian capital to disable a nuclear reactor. Her objective is neutralizing Iranian air defenses so that Israeli warplanes can bomb a nuclear plant and prevent Iran from obtaining an atomic bomb."]),
    
    Product(
        
        title: "Time Travel Theories",
        
        products: [
            
            "WormHole",
            "BootStrap Paradox",
            "Time Capsule",
            "Causal Loop",
            "Tachyonic Anti-Telephone."
        ],
        
        image: [
            
            UIImage(named: "wormhole"),
            UIImage(named: "bootstrapParadox"),
            UIImage(named: "timeCapsule"),
            UIImage(named: "causalLoop"),
            UIImage(named: "tachyonic")
        
        ],
        
        prodImgInfo: [
            
            "Wormholes are a hypothetical warped spacetime permitted by the Einstein field equations of general relativity. A proposed time-travel machine using a traversable wormhole would hypothetically work in the following way: One end of the wormhole is accelerated to some significant fraction of the speed of light, perhaps with some advanced propulsion system, and then brought back to the point of origin. Alternatively, another way is to take one entrance of the wormhole and move it to within the gravitational field of an object that has higher gravity than the other entrance, and then return it to a position near the other entrance",
            
            "The Bootstrap Paradox is a theoretical paradox of time travel that occurs when an object or piece of information sent back in time becomes trapped within an infinite cause-effect loop in which the item no longer has a discernible point of origin, and is said to be “uncaused” or “self-created”. It is also known as an Ontological Paradox, in reference to ontology, a branch of metaphysics dealing with the study of being and existence.",
            
            "A time capsule is a historic cache of goods or information, usually intended as a deliberate method of communication with future people, and to help future archaeologists, anthropologists, or historians. The preservation of holy relics dates back for millennia, but the practice of preparing and preserving a collection of everyday artifacts and messages to the future appears to be a more recent practice.",
            
            "A causal loop is a paradox of time travel that occurs when a future event is the cause of a past event, which in turn is the cause of the future event. Both events then exist in spacetime, but their origin cannot be determined. A causal loop may involve an event, a person or object, or information. The terms boot-strap paradox, predestination paradox or ontological paradox are sometimes used in fiction to refer to a causal loop",
            
            "A tachyonic antitelephone is a hypothetical device in theoretical physics that could be used to send signals into one's own past. A device capable of 'telegraphing into the past' was later also called a 'tachyonic antitelephone' by Gregory Benford et al. According to the current understanding of physics, no such faster-than-light transfer of information is actually possible. For instance, the hypothetical tachyon particles which give the device its name do not exist even theoretically in the standard model of particle physics, due to tachyon condensation, and there is no experimental evidence that suggests that they might exist. The problem of detecting tachyons via causal contradictions was treated but without scientific verification."])
    
]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "allProducts", for: indexPath)
        cell.textLabel?.text = ListArray[indexPath.row].title
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let identifier = segue.identifier
        if identifier == "showProducts" {
            let dest = segue.destination as! ProductsDisplayViewController
            
            dest.products = ListArray[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    }

    



