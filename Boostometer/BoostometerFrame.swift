//
//  BoostometerFrame.swift
//  Boostometer
//
//  Created by Ada Jiang on 5/15/24.
//

import SwiftUI

struct Boostometer {
    static let aspectRatio = 1.3
    static let textPaths: [Path] = [
        Self.pathB,
        Self.pathO1,
        Self.pathO2,
        Self.pathS,
        Self.pathT,
        Self.pathEx
    ]

    static func outline(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.88429*width, y: 0.7177*height))
        path.addCurve(to: CGPoint(x: 0.93488*width, y: 0.69303*height), control1: CGPoint(x: 0.91144*width, y: 0.70922*height), control2: CGPoint(x: 0.92501*width, y: 0.70497*height))
        path.addCurve(to: CGPoint(x: 0.95028*width, y: 0.65357*height), control1: CGPoint(x: 0.94268*width, y: 0.6836*height), control2: CGPoint(x: 0.94913*width, y: 0.66707*height))
        path.addCurve(to: CGPoint(x: 0.93732*width, y: 0.59559*height), control1: CGPoint(x: 0.95173*width, y: 0.63646*height), control2: CGPoint(x: 0.94693*width, y: 0.62284*height))
        path.addCurve(to: CGPoint(x: 0.79475*width, y: 0.3662*height), control1: CGPoint(x: 0.90574*width, y: 0.50606*height), control2: CGPoint(x: 0.85693*width, y: 0.42711*height))
        path.addCurve(to: CGPoint(x: 0.50109*width, y: 0.23946*height), control1: CGPoint(x: 0.71088*width, y: 0.28405*height), control2: CGPoint(x: 0.60751*width, y: 0.23944*height))
        path.addCurve(to: CGPoint(x: 0.20748*width, y: 0.36634*height), control1: CGPoint(x: 0.39467*width, y: 0.23949*height), control2: CGPoint(x: 0.29132*width, y: 0.28415*height))
        path.addCurve(to: CGPoint(x: 0.06497*width, y: 0.5958*height), control1: CGPoint(x: 0.14531*width, y: 0.42728*height), control2: CGPoint(x: 0.09652*width, y: 0.50625*height))
        path.addCurve(to: CGPoint(x: 0.05203*width, y: 0.65377*height), control1: CGPoint(x: 0.05537*width, y: 0.62305*height), control2: CGPoint(x: 0.05057*width, y: 0.63667*height))
        path.addCurve(to: CGPoint(x: 0.06744*width, y: 0.69323*height), control1: CGPoint(x: 0.05319*width, y: 0.66728*height), control2: CGPoint(x: 0.05964*width, y: 0.68381*height))
        path.addCurve(to: CGPoint(x: 0.11804*width, y: 0.71788*height), control1: CGPoint(x: 0.07732*width, y: 0.70517*height), control2: CGPoint(x: 0.09089*width, y: 0.70941*height))
        path.addLine(to: CGPoint(x: 0.2098*width, y: 0.74653*height))
        path.addCurve(to: CGPoint(x: 0.25791*width, y: 0.75733*height), control1: CGPoint(x: 0.23572*width, y: 0.75462*height), control2: CGPoint(x: 0.24867*width, y: 0.75867*height))
        path.addCurve(to: CGPoint(x: 0.28068*width, y: 0.7468*height), control1: CGPoint(x: 0.26866*width, y: 0.75578*height), control2: CGPoint(x: 0.27169*width, y: 0.75438*height))
        path.addCurve(to: CGPoint(x: 0.32357*width, y: 0.67849*height), control1: CGPoint(x: 0.28839*width, y: 0.74029*height), control2: CGPoint(x: 0.30012*width, y: 0.71969*height))
        path.addCurve(to: CGPoint(x: 0.36678*width, y: 0.62189*height), control1: CGPoint(x: 0.33565*width, y: 0.65726*height), control2: CGPoint(x: 0.35017*width, y: 0.63817*height))
        path.addCurve(to: CGPoint(x: 0.50114*width, y: 0.56383*height), control1: CGPoint(x: 0.40515*width, y: 0.58428*height), control2: CGPoint(x: 0.45244*width, y: 0.56385*height))
        path.addCurve(to: CGPoint(x: 0.63552*width, y: 0.62183*height), control1: CGPoint(x: 0.54984*width, y: 0.56382*height), control2: CGPoint(x: 0.59714*width, y: 0.58424*height))
        path.addCurve(to: CGPoint(x: 0.67875*width, y: 0.67841*height), control1: CGPoint(x: 0.65213*width, y: 0.6381*height), control2: CGPoint(x: 0.66666*width, y: 0.65719*height))
        path.addCurve(to: CGPoint(x: 0.72166*width, y: 0.74669*height), control1: CGPoint(x: 0.70221*width, y: 0.7196*height), control2: CGPoint(x: 0.71395*width, y: 0.74019*height))
        path.addCurve(to: CGPoint(x: 0.74444*width, y: 0.75722*height), control1: CGPoint(x: 0.73064*width, y: 0.75427*height), control2: CGPoint(x: 0.73368*width, y: 0.75568*height))
        path.addCurve(to: CGPoint(x: 0.79254*width, y: 0.74639*height), control1: CGPoint(x: 0.75367*width, y: 0.75855*height), control2: CGPoint(x: 0.76662*width, y: 0.7545*height))
        path.addLine(to: CGPoint(x: 0.88429*width, y: 0.7177*height))
        path.closeSubpath()
        return path
    }



    ///Asepct ratio
    static let pathB: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.22393*width, y: 0.52181*height))
        path.addLine(to: CGPoint(x: 0.21298*width, y: 0.54168*height))
        path.addCurve(to: CGPoint(x: 0.21373*width, y: 0.55785*height), control1: CGPoint(x: 0.20915*width, y: 0.54883*height), control2: CGPoint(x: 0.21047*width, y: 0.55529*height))
        path.addCurve(to: CGPoint(x: 0.22311*width, y: 0.55574*height), control1: CGPoint(x: 0.21627*width, y: 0.55984*height), control2: CGPoint(x: 0.22026*width, y: 0.55993*height))
        path.addLine(to: CGPoint(x: 0.23945*width, y: 0.53164*height))
        path.addCurve(to: CGPoint(x: 0.28807*width, y: 0.51666*height), control1: CGPoint(x: 0.25931*width, y: 0.50252*height), control2: CGPoint(x: 0.27666*width, y: 0.50769*height))
        path.addCurve(to: CGPoint(x: 0.29316*width, y: 0.63318*height), control1: CGPoint(x: 0.31525*width, y: 0.53803*height), control2: CGPoint(x: 0.31688*width, y: 0.58574*height))
        path.addCurve(to: CGPoint(x: 0.16796*width, y: 0.68624*height), control1: CGPoint(x: 0.25619*width, y: 0.70714*height), control2: CGPoint(x: 0.20872*width, y: 0.71828*height))
        path.addCurve(to: CGPoint(x: 0.1445*width, y: 0.53934*height), control1: CGPoint(x: 0.12358*width, y: 0.65134*height), control2: CGPoint(x: 0.11592*width, y: 0.59651*height))
        path.addLine(to: CGPoint(x: 0.15982*width, y: 0.50869*height))
        path.addCurve(to: CGPoint(x: 0.2176*width, y: 0.46329*height), control1: CGPoint(x: 0.18269*width, y: 0.46295*height), control2: CGPoint(x: 0.19858*width, y: 0.44833*height))
        path.addCurve(to: CGPoint(x: 0.22393*width, y: 0.52181*height), control1: CGPoint(x: 0.2339*width, y: 0.47611*height), control2: CGPoint(x: 0.23426*width, y: 0.50316*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.23185*width, y: 0.66597*height))
        path.addLine(to: CGPoint(x: 0.27947*width, y: 0.56921*height))
        path.addCurve(to: CGPoint(x: 0.27896*width, y: 0.53085*height), control1: CGPoint(x: 0.28817*width, y: 0.5513*height), control2: CGPoint(x: 0.28621*width, y: 0.53655*height))
        path.addCurve(to: CGPoint(x: 0.2501*width, y: 0.55323*height), control1: CGPoint(x: 0.26791*width, y: 0.52216*height), control2: CGPoint(x: 0.25724*width, y: 0.53038*height))
        path.addLine(to: CGPoint(x: 0.21924*width, y: 0.65132*height))
        path.addCurve(to: CGPoint(x: 0.20686*width, y: 0.66395*height), control1: CGPoint(x: 0.21601*width, y: 0.66131*height), control2: CGPoint(x: 0.21104*width, y: 0.6652*height))
        path.addCurve(to: CGPoint(x: 0.19934*width, y: 0.6472*height), control1: CGPoint(x: 0.20118*width, y: 0.6622*height), control2: CGPoint(x: 0.19896*width, y: 0.65706*height))
        path.addLine(to: CGPoint(x: 0.20359*width, y: 0.54785*height))
        path.addCurve(to: CGPoint(x: 0.17845*width, y: 0.51283*height), control1: CGPoint(x: 0.20475*width, y: 0.51927*height), control2: CGPoint(x: 0.19201*width, y: 0.50993*height))
        path.addCurve(to: CGPoint(x: 0.16002*width, y: 0.57595*height), control1: CGPoint(x: 0.16259*width, y: 0.51629*height), control2: CGPoint(x: 0.14988*width, y: 0.54019*height))
        path.addLine(to: CGPoint(x: 0.18532*width, y: 0.66464*height))
        path.addCurve(to: CGPoint(x: 0.20457*width, y: 0.6852*height), control1: CGPoint(x: 0.18898*width, y: 0.67701*height), control2: CGPoint(x: 0.19653*width, y: 0.68362*height))
        path.addCurve(to: CGPoint(x: 0.23185*width, y: 0.66597*height), control1: CGPoint(x: 0.21443*width, y: 0.68718*height), control2: CGPoint(x: 0.22431*width, y: 0.68105*height))
        path.closeSubpath()
        return path
    }()

    static let pathO1: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.3055*width, y: 0.35311*height))
        path.addCurve(to: CGPoint(x: 0.41316*width, y: 0.39959*height), control1: CGPoint(x: 0.34898*width, y: 0.32263*height), control2: CGPoint(x: 0.38584*width, y: 0.33827*height))
        path.addCurve(to: CGPoint(x: 0.3879*width, y: 0.53801*height), control1: CGPoint(x: 0.44049*width, y: 0.46091*height), control2: CGPoint(x: 0.43138*width, y: 0.50753*height))
        path.addCurve(to: CGPoint(x: 0.28084*width, y: 0.49233*height), control1: CGPoint(x: 0.3446*width, y: 0.56835*height), control2: CGPoint(x: 0.30816*width, y: 0.55365*height))
        path.addCurve(to: CGPoint(x: 0.3055*width, y: 0.35311*height), control1: CGPoint(x: 0.25351*width, y: 0.43101*height), control2: CGPoint(x: 0.2622*width, y: 0.38345*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.40029*width, y: 0.41138*height))
        path.addLine(to: CGPoint(x: 0.31775*width, y: 0.37125*height))
        path.addCurve(to: CGPoint(x: 0.29895*width, y: 0.39394*height), control1: CGPoint(x: 0.30596*width, y: 0.36568*height), control2: CGPoint(x: 0.29652*width, y: 0.37968*height))
        path.addLine(to: CGPoint(x: 0.31871*width, y: 0.51247*height))
        path.addCurve(to: CGPoint(x: 0.35188*width, y: 0.52424*height), control1: CGPoint(x: 0.32311*width, y: 0.53827*height), control2: CGPoint(x: 0.34029*width, y: 0.5422*height))
        path.addLine(to: CGPoint(x: 0.40676*width, y: 0.43909*height))
        path.addCurve(to: CGPoint(x: 0.40029*width, y: 0.41138*height), control1: CGPoint(x: 0.41374*width, y: 0.42837*height), control2: CGPoint(x: 0.41091*width, y: 0.41653*height))
        path.closeSubpath()
        return path
    }()

    static let pathO2: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.50229*width, y: 0.50942*height))
        path.addCurve(to: CGPoint(x: 0.42661*width, y: 0.40297*height), control1: CGPoint(x: 0.45269*width, y: 0.50942*height), control2: CGPoint(x: 0.42661*width, y: 0.47322*height))
        path.addCurve(to: CGPoint(x: 0.50229*width, y: 0.2976*height), control1: CGPoint(x: 0.42661*width, y: 0.33273*height), control2: CGPoint(x: 0.45269*width, y: 0.2976*height))
        path.addCurve(to: CGPoint(x: 0.5782*width, y: 0.40297*height), control1: CGPoint(x: 0.55211*width, y: 0.2976*height), control2: CGPoint(x: 0.5782*width, y: 0.33273*height))
        path.addCurve(to: CGPoint(x: 0.50229*width, y: 0.50942*height), control1: CGPoint(x: 0.5782*width, y: 0.47322*height), control2: CGPoint(x: 0.55211*width, y: 0.50942*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50593*width, y: 0.48609*height))
        path.addLine(to: CGPoint(x: 0.56237*width, y: 0.40056*height))
        path.addCurve(to: CGPoint(x: 0.55724*width, y: 0.37241*height), control1: CGPoint(x: 0.56964*width, y: 0.38957*height), control2: CGPoint(x: 0.56751*width, y: 0.3775*height))
        path.addLine(to: CGPoint(x: 0.47621*width, y: 0.33165*height))
        path.addCurve(to: CGPoint(x: 0.45184*width, y: 0.36222*height), control1: CGPoint(x: 0.45911*width, y: 0.32307*height), control2: CGPoint(x: 0.44564*width, y: 0.33702*height))
        path.addLine(to: CGPoint(x: 0.4807*width, y: 0.47778*height))
        path.addCurve(to: CGPoint(x: 0.50593*width, y: 0.48609*height), control1: CGPoint(x: 0.48412*width, y: 0.49172*height), control2: CGPoint(x: 0.49781*width, y: 0.49816*height))
        path.closeSubpath()
        return path
    }()

    static let pathS: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.72709*width, y: 0.3789*height))
        path.addCurve(to: CGPoint(x: 0.74806*width, y: 0.48382*height), control1: CGPoint(x: 0.76703*width, y: 0.4193*height), control2: CGPoint(x: 0.76363*width, y: 0.45961*height))
        path.addCurve(to: CGPoint(x: 0.71844*width, y: 0.49485*height), control1: CGPoint(x: 0.74068*width, y: 0.4953*height), control2: CGPoint(x: 0.72843*width, y: 0.50495*height))
        path.addCurve(to: CGPoint(x: 0.7166*width, y: 0.4644*height), control1: CGPoint(x: 0.71045*width, y: 0.48677*height), control2: CGPoint(x: 0.71096*width, y: 0.47316*height))
        path.addLine(to: CGPoint(x: 0.73942*width, y: 0.42892*height))
        path.addCurve(to: CGPoint(x: 0.73035*width, y: 0.40459*height), control1: CGPoint(x: 0.74586*width, y: 0.4189*height), control2: CGPoint(x: 0.74423*width, y: 0.40864*height))
        path.addLine(to: CGPoint(x: 0.64942*width, y: 0.38094*height))
        path.addCurve(to: CGPoint(x: 0.6283*width, y: 0.38473*height), control1: CGPoint(x: 0.63974*width, y: 0.37805*height), control2: CGPoint(x: 0.6316*width, y: 0.37533*height))
        path.addCurve(to: CGPoint(x: 0.63729*width, y: 0.40278*height), control1: CGPoint(x: 0.625*width, y: 0.39414*height), control2: CGPoint(x: 0.62949*width, y: 0.4004*height))
        path.addLine(to: CGPoint(x: 0.68573*width, y: 0.41802*height))
        path.addCurve(to: CGPoint(x: 0.70034*width, y: 0.46449*height), control1: CGPoint(x: 0.70744*width, y: 0.42482*height), control2: CGPoint(x: 0.70967*width, y: 0.44912*height))
        path.addLine(to: CGPoint(x: 0.69541*width, y: 0.47259*height))
        path.addCurve(to: CGPoint(x: 0.69805*width, y: 0.49282*height), control1: CGPoint(x: 0.69061*width, y: 0.48047*height), control2: CGPoint(x: 0.6926*width, y: 0.48421*height))
        path.addLine(to: CGPoint(x: 0.70652*width, y: 0.50656*height))
        path.addCurve(to: CGPoint(x: 0.70562*width, y: 0.537*height), control1: CGPoint(x: 0.712*width, y: 0.51555*height), control2: CGPoint(x: 0.71112*width, y: 0.52844*height))
        path.addCurve(to: CGPoint(x: 0.6106*width, y: 0.53355*height), control1: CGPoint(x: 0.68226*width, y: 0.57331*height), control2: CGPoint(x: 0.63989*width, y: 0.56317*height))
        path.addCurve(to: CGPoint(x: 0.58744*width, y: 0.42263*height), control1: CGPoint(x: 0.58181*width, y: 0.50442*height), control2: CGPoint(x: 0.56328*width, y: 0.4602*height))
        path.addCurve(to: CGPoint(x: 0.61786*width, y: 0.41206*height), control1: CGPoint(x: 0.59697*width, y: 0.40781*height), control2: CGPoint(x: 0.60804*width, y: 0.40213*height))
        path.addCurve(to: CGPoint(x: 0.60921*width, y: 0.44431*height), control1: CGPoint(x: 0.62435*width, y: 0.41863*height), control2: CGPoint(x: 0.62907*width, y: 0.43649*height))
        path.addLine(to: CGPoint(x: 0.59303*width, y: 0.45067*height))
        path.addCurve(to: CGPoint(x: 0.58742*width, y: 0.45982*height), control1: CGPoint(x: 0.58862*width, y: 0.45241*height), control2: CGPoint(x: 0.5867*width, y: 0.45667*height))
        path.addCurve(to: CGPoint(x: 0.59867*width, y: 0.47223*height), control1: CGPoint(x: 0.58861*width, y: 0.4648*height), control2: CGPoint(x: 0.59224*width, y: 0.46813*height))
        path.addLine(to: CGPoint(x: 0.68288*width, y: 0.52537*height))
        path.addCurve(to: CGPoint(x: 0.69778*width, y: 0.52356*height), control1: CGPoint(x: 0.69125*width, y: 0.53073*height), control2: CGPoint(x: 0.69546*width, y: 0.52844*height))
        path.addCurve(to: CGPoint(x: 0.69476*width, y: 0.50776*height), control1: CGPoint(x: 0.70023*width, y: 0.51846*height), control2: CGPoint(x: 0.69928*width, y: 0.51439*height))
        path.addLine(to: CGPoint(x: 0.6224*width, y: 0.40287*height))
        path.addCurve(to: CGPoint(x: 0.62141*width, y: 0.36812*height), control1: CGPoint(x: 0.61426*width, y: 0.39119*height), control2: CGPoint(x: 0.61496*width, y: 0.37813*height))
        path.addCurve(to: CGPoint(x: 0.72709*width, y: 0.3789*height), control1: CGPoint(x: 0.64007*width, y: 0.33911*height), control2: CGPoint(x: 0.68898*width, y: 0.34036*height))
        path.closeSubpath()
        return path
    }()


    static let pathT: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.71795*width, y: 0.55837*height))
        path.addLine(to: CGPoint(x: 0.81872*width, y: 0.51874*height))
        path.addCurve(to: CGPoint(x: 0.83045*width, y: 0.5025*height), control1: CGPoint(x: 0.83104*width, y: 0.514*height), control2: CGPoint(x: 0.83378*width, y: 0.50824*height))
        path.addCurve(to: CGPoint(x: 0.82398*width, y: 0.49865*height), control1: CGPoint(x: 0.82934*width, y: 0.50059*height), control2: CGPoint(x: 0.82711*width, y: 0.49904*height))
        path.addLine(to: CGPoint(x: 0.78854*width, y: 0.49456*height))
        path.addCurve(to: CGPoint(x: 0.77117*width, y: 0.43231*height), control1: CGPoint(x: 0.75955*width, y: 0.49109*height), control2: CGPoint(x: 0.75129*width, y: 0.45046*height))
        path.addCurve(to: CGPoint(x: 0.80728*width, y: 0.44393*height), control1: CGPoint(x: 0.77999*width, y: 0.42426*height), control2: CGPoint(x: 0.79443*width, y: 0.42181*height))
        path.addLine(to: CGPoint(x: 0.84951*width, y: 0.51666*height))
        path.addCurve(to: CGPoint(x: 0.84415*width, y: 0.61627*height), control1: CGPoint(x: 0.87187*width, y: 0.55515*height), control2: CGPoint(x: 0.86817*width, y: 0.59432*height))
        path.addCurve(to: CGPoint(x: 0.80975*width, y: 0.61123*height), control1: CGPoint(x: 0.83343*width, y: 0.62605*height), control2: CGPoint(x: 0.818*width, y: 0.62452*height))
        path.addCurve(to: CGPoint(x: 0.82967*width, y: 0.55398*height), control1: CGPoint(x: 0.79799*width, y: 0.59235*height), control2: CGPoint(x: 0.80582*width, y: 0.57577*height))
        path.addLine(to: CGPoint(x: 0.83727*width, y: 0.54704*height))
        path.addCurve(to: CGPoint(x: 0.84514*width, y: 0.52553*height), control1: CGPoint(x: 0.84487*width, y: 0.54009*height), control2: CGPoint(x: 0.84934*width, y: 0.53276*height))
        path.addCurve(to: CGPoint(x: 0.82495*width, y: 0.53128*height), control1: CGPoint(x: 0.84181*width, y: 0.51979*height), control2: CGPoint(x: 0.83596*width, y: 0.52155*height))
        path.addLine(to: CGPoint(x: 0.73907*width, y: 0.60613*height))
        path.addCurve(to: CGPoint(x: 0.69667*width, y: 0.60645*height), control1: CGPoint(x: 0.72051*width, y: 0.62243*height), control2: CGPoint(x: 0.70853*width, y: 0.62686*height))
        path.addCurve(to: CGPoint(x: 0.71795*width, y: 0.55837*height), control1: CGPoint(x: 0.68346*width, y: 0.58369*height), control2: CGPoint(x: 0.69405*width, y: 0.56686*height))
        path.closeSubpath()
        return path
    }()

    static let pathEx: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.85693*width, y: 0.61291*height))
        path.addLine(to: CGPoint(x: 0.79649*width, y: 0.65888*height))
        path.addCurve(to: CGPoint(x: 0.79151*width, y: 0.66783*height), control1: CGPoint(x: 0.79218*width, y: 0.66206*height), control2: CGPoint(x: 0.79111*width, y: 0.66516*height))
        path.addCurve(to: CGPoint(x: 0.79878*width, y: 0.67297*height), control1: CGPoint(x: 0.79195*width, y: 0.67103*height), control2: CGPoint(x: 0.79405*width, y: 0.67323*height))
        path.addLine(to: CGPoint(x: 0.86389*width, y: 0.66871*height))
        path.addCurve(to: CGPoint(x: 0.90049*width, y: 0.62756*height), control1: CGPoint(x: 0.88451*width, y: 0.66723*height), control2: CGPoint(x: 0.90273*width, y: 0.65925*height))
        path.addCurve(to: CGPoint(x: 0.85693*width, y: 0.61291*height), control1: CGPoint(x: 0.89849*width, y: 0.59935*height), control2: CGPoint(x: 0.87311*width, y: 0.60055*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.75736*width, y: 0.6459*height))
        path.addCurve(to: CGPoint(x: 0.73651*width, y: 0.65932*height), control1: CGPoint(x: 0.74588*width, y: 0.64231*height), control2: CGPoint(x: 0.73925*width, y: 0.64927*height))
        path.addCurve(to: CGPoint(x: 0.74684*width, y: 0.70474*height), control1: CGPoint(x: 0.7321*width, y: 0.67632*height), control2: CGPoint(x: 0.73097*width, y: 0.7*height))
        path.addCurve(to: CGPoint(x: 0.76835*width, y: 0.68827*height), control1: CGPoint(x: 0.75566*width, y: 0.70727*height), control2: CGPoint(x: 0.76355*width, y: 0.70586*height))
        path.addCurve(to: CGPoint(x: 0.75736*width, y: 0.6459*height), control1: CGPoint(x: 0.77276*width, y: 0.67126*height), control2: CGPoint(x: 0.77414*width, y: 0.65108*height))
        path.closeSubpath()
        return path
    }()

    // need to give it actual size in order for stroke to work in symbols
    static let outline: Path = {
        var path = Path()
//        let height = CGFloat(1)
//        let width = height * Self.aspectRatio
//        let width = CGFloat(1)
//        let height = width / Self.aspectRatio
        let width = CGFloat(370)
        let height = width / Self.aspectRatio

        path.move(to: CGPoint(x: 0.88429*width, y: 0.7177*height))
        path.addCurve(to: CGPoint(x: 0.93488*width, y: 0.69303*height), control1: CGPoint(x: 0.91144*width, y: 0.70922*height), control2: CGPoint(x: 0.92501*width, y: 0.70497*height))
        path.addCurve(to: CGPoint(x: 0.95028*width, y: 0.65357*height), control1: CGPoint(x: 0.94268*width, y: 0.6836*height), control2: CGPoint(x: 0.94913*width, y: 0.66707*height))
        path.addCurve(to: CGPoint(x: 0.93732*width, y: 0.59559*height), control1: CGPoint(x: 0.95173*width, y: 0.63646*height), control2: CGPoint(x: 0.94693*width, y: 0.62284*height))
        path.addCurve(to: CGPoint(x: 0.79475*width, y: 0.3662*height), control1: CGPoint(x: 0.90574*width, y: 0.50606*height), control2: CGPoint(x: 0.85693*width, y: 0.42711*height))
        path.addCurve(to: CGPoint(x: 0.50109*width, y: 0.23946*height), control1: CGPoint(x: 0.71088*width, y: 0.28405*height), control2: CGPoint(x: 0.60751*width, y: 0.23944*height))
        path.addCurve(to: CGPoint(x: 0.20748*width, y: 0.36634*height), control1: CGPoint(x: 0.39467*width, y: 0.23949*height), control2: CGPoint(x: 0.29132*width, y: 0.28415*height))
        path.addCurve(to: CGPoint(x: 0.06497*width, y: 0.5958*height), control1: CGPoint(x: 0.14531*width, y: 0.42728*height), control2: CGPoint(x: 0.09652*width, y: 0.50625*height))
        path.addCurve(to: CGPoint(x: 0.05203*width, y: 0.65377*height), control1: CGPoint(x: 0.05537*width, y: 0.62305*height), control2: CGPoint(x: 0.05057*width, y: 0.63667*height))
        path.addCurve(to: CGPoint(x: 0.06744*width, y: 0.69323*height), control1: CGPoint(x: 0.05319*width, y: 0.66728*height), control2: CGPoint(x: 0.05964*width, y: 0.68381*height))
        path.addCurve(to: CGPoint(x: 0.11804*width, y: 0.71788*height), control1: CGPoint(x: 0.07732*width, y: 0.70517*height), control2: CGPoint(x: 0.09089*width, y: 0.70941*height))
        path.addLine(to: CGPoint(x: 0.2098*width, y: 0.74653*height))
        path.addCurve(to: CGPoint(x: 0.25791*width, y: 0.75733*height), control1: CGPoint(x: 0.23572*width, y: 0.75462*height), control2: CGPoint(x: 0.24867*width, y: 0.75867*height))
        path.addCurve(to: CGPoint(x: 0.28068*width, y: 0.7468*height), control1: CGPoint(x: 0.26866*width, y: 0.75578*height), control2: CGPoint(x: 0.27169*width, y: 0.75438*height))
        path.addCurve(to: CGPoint(x: 0.32357*width, y: 0.67849*height), control1: CGPoint(x: 0.28839*width, y: 0.74029*height), control2: CGPoint(x: 0.30012*width, y: 0.71969*height))
        path.addCurve(to: CGPoint(x: 0.36678*width, y: 0.62189*height), control1: CGPoint(x: 0.33565*width, y: 0.65726*height), control2: CGPoint(x: 0.35017*width, y: 0.63817*height))
        path.addCurve(to: CGPoint(x: 0.50114*width, y: 0.56383*height), control1: CGPoint(x: 0.40515*width, y: 0.58428*height), control2: CGPoint(x: 0.45244*width, y: 0.56385*height))
        path.addCurve(to: CGPoint(x: 0.63552*width, y: 0.62183*height), control1: CGPoint(x: 0.54984*width, y: 0.56382*height), control2: CGPoint(x: 0.59714*width, y: 0.58424*height))
        path.addCurve(to: CGPoint(x: 0.67875*width, y: 0.67841*height), control1: CGPoint(x: 0.65213*width, y: 0.6381*height), control2: CGPoint(x: 0.66666*width, y: 0.65719*height))
        path.addCurve(to: CGPoint(x: 0.72166*width, y: 0.74669*height), control1: CGPoint(x: 0.70221*width, y: 0.7196*height), control2: CGPoint(x: 0.71395*width, y: 0.74019*height))
        path.addCurve(to: CGPoint(x: 0.74444*width, y: 0.75722*height), control1: CGPoint(x: 0.73064*width, y: 0.75427*height), control2: CGPoint(x: 0.73368*width, y: 0.75568*height))
        path.addCurve(to: CGPoint(x: 0.79254*width, y: 0.74639*height), control1: CGPoint(x: 0.75367*width, y: 0.75855*height), control2: CGPoint(x: 0.76662*width, y: 0.7545*height))
        path.addLine(to: CGPoint(x: 0.88429*width, y: 0.7177*height))
        path.closeSubpath()
        return path
    }()
}
