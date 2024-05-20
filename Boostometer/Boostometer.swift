//
//  Boostometer.swift
//  Boostometer
//
//  Created by Ada Jiang on 5/15/24.
//

import SwiftUI

/// exported SVGs from Needle Base Frame, Boost Wordmark and Boostometer
struct Boostometer {
    static let aspectRatio = 0.9
    static let textPaths: [Path] = [
        Self.pathB,
        Self.pathO1,
        Self.pathO2,
        Self.pathS,
        Self.pathT,
        Self.pathEx
    ]

    static let pathB: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio

        path.move(to: CGPoint(x: 0.22393*width, y: 0.36468*height))
        path.addLine(to: CGPoint(x: 0.21298*width, y: 0.37856*height))
        path.addCurve(to: CGPoint(x: 0.21373*width, y: 0.38987*height), control1: CGPoint(x: 0.20915*width, y: 0.38356*height), control2: CGPoint(x: 0.21047*width, y: 0.38808*height))
        path.addCurve(to: CGPoint(x: 0.22311*width, y: 0.38839*height), control1: CGPoint(x: 0.21627*width, y: 0.39126*height), control2: CGPoint(x: 0.22026*width, y: 0.39132*height))
        path.addLine(to: CGPoint(x: 0.23945*width, y: 0.37155*height))
        path.addCurve(to: CGPoint(x: 0.28807*width, y: 0.36108*height), control1: CGPoint(x: 0.25931*width, y: 0.3512*height), control2: CGPoint(x: 0.27666*width, y: 0.35481*height))
        path.addCurve(to: CGPoint(x: 0.29316*width, y: 0.44251*height), control1: CGPoint(x: 0.31525*width, y: 0.37601*height), control2: CGPoint(x: 0.31688*width, y: 0.40936*height))
        path.addCurve(to: CGPoint(x: 0.16796*width, y: 0.4796*height), control1: CGPoint(x: 0.25619*width, y: 0.4942*height), control2: CGPoint(x: 0.20872*width, y: 0.50199*height))
        path.addCurve(to: CGPoint(x: 0.1445*width, y: 0.37693*height), control1: CGPoint(x: 0.12358*width, y: 0.45521*height), control2: CGPoint(x: 0.11592*width, y: 0.41689*height))
        path.addLine(to: CGPoint(x: 0.15982*width, y: 0.35551*height))
        path.addCurve(to: CGPoint(x: 0.2176*width, y: 0.32378*height), control1: CGPoint(x: 0.18269*width, y: 0.32355*height), control2: CGPoint(x: 0.19858*width, y: 0.31333*height))
        path.addCurve(to: CGPoint(x: 0.22393*width, y: 0.36468*height), control1: CGPoint(x: 0.2339*width, y: 0.33274*height), control2: CGPoint(x: 0.23426*width, y: 0.35164*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.23185*width, y: 0.46543*height))
        path.addLine(to: CGPoint(x: 0.27947*width, y: 0.3978*height))
        path.addCurve(to: CGPoint(x: 0.27896*width, y: 0.371*height), control1: CGPoint(x: 0.28817*width, y: 0.38529*height), control2: CGPoint(x: 0.28621*width, y: 0.37498*height))
        path.addCurve(to: CGPoint(x: 0.2501*width, y: 0.38664*height), control1: CGPoint(x: 0.26791*width, y: 0.36493*height), control2: CGPoint(x: 0.25724*width, y: 0.37067*height))
        path.addLine(to: CGPoint(x: 0.21924*width, y: 0.45519*height))
        path.addCurve(to: CGPoint(x: 0.20686*width, y: 0.46402*height), control1: CGPoint(x: 0.21601*width, y: 0.46218*height), control2: CGPoint(x: 0.21104*width, y: 0.46489*height))
        path.addCurve(to: CGPoint(x: 0.19934*width, y: 0.45231*height), control1: CGPoint(x: 0.20118*width, y: 0.46279*height), control2: CGPoint(x: 0.19896*width, y: 0.4592*height))
        path.addLine(to: CGPoint(x: 0.20359*width, y: 0.38288*height))
        path.addCurve(to: CGPoint(x: 0.17845*width, y: 0.3584*height), control1: CGPoint(x: 0.20475*width, y: 0.36291*height), control2: CGPoint(x: 0.19201*width, y: 0.35638*height))
        path.addCurve(to: CGPoint(x: 0.16002*width, y: 0.40251*height), control1: CGPoint(x: 0.16259*width, y: 0.36082*height), control2: CGPoint(x: 0.14988*width, y: 0.37752*height))
        path.addLine(to: CGPoint(x: 0.18532*width, y: 0.4645*height))
        path.addCurve(to: CGPoint(x: 0.20457*width, y: 0.47887*height), control1: CGPoint(x: 0.18898*width, y: 0.47314*height), control2: CGPoint(x: 0.19653*width, y: 0.47776*height))
        path.addCurve(to: CGPoint(x: 0.23185*width, y: 0.46543*height), control1: CGPoint(x: 0.21443*width, y: 0.48026*height), control2: CGPoint(x: 0.22431*width, y: 0.47597*height))
        path.closeSubpath()
        return path
    }()

    static let pathO1: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.3055*width, y: 0.24678*height))
        path.addCurve(to: CGPoint(x: 0.41316*width, y: 0.27927*height), control1: CGPoint(x: 0.34898*width, y: 0.22548*height), control2: CGPoint(x: 0.38584*width, y: 0.23641*height))
        path.addCurve(to: CGPoint(x: 0.3879*width, y: 0.376*height), control1: CGPoint(x: 0.44049*width, y: 0.32212*height), control2: CGPoint(x: 0.43138*width, y: 0.3547*height))
        path.addCurve(to: CGPoint(x: 0.28084*width, y: 0.34408*height), control1: CGPoint(x: 0.3446*width, y: 0.39721*height), control2: CGPoint(x: 0.30816*width, y: 0.38693*height))
        path.addCurve(to: CGPoint(x: 0.3055*width, y: 0.24678*height), control1: CGPoint(x: 0.25351*width, y: 0.30122*height), control2: CGPoint(x: 0.2622*width, y: 0.26799*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.40029*width, y: 0.2875*height))
        path.addLine(to: CGPoint(x: 0.31775*width, y: 0.25946*height))
        path.addCurve(to: CGPoint(x: 0.29895*width, y: 0.27531*height), control1: CGPoint(x: 0.30596*width, y: 0.25557*height), control2: CGPoint(x: 0.29652*width, y: 0.26535*height))
        path.addLine(to: CGPoint(x: 0.31871*width, y: 0.35816*height))
        path.addCurve(to: CGPoint(x: 0.35188*width, y: 0.36638*height), control1: CGPoint(x: 0.32311*width, y: 0.37618*height), control2: CGPoint(x: 0.34029*width, y: 0.37893*height))
        path.addLine(to: CGPoint(x: 0.40676*width, y: 0.30687*height))
        path.addCurve(to: CGPoint(x: 0.40029*width, y: 0.2875*height), control1: CGPoint(x: 0.41374*width, y: 0.29938*height), control2: CGPoint(x: 0.41091*width, y: 0.2911*height))
        path.closeSubpath()
        return path
    }()

    static let pathO2: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.50229*width, y: 0.35602*height))
        path.addCurve(to: CGPoint(x: 0.42661*width, y: 0.28163*height), control1: CGPoint(x: 0.45269*width, y: 0.35602*height), control2: CGPoint(x: 0.42661*width, y: 0.33072*height))
        path.addCurve(to: CGPoint(x: 0.50229*width, y: 0.20799*height), control1: CGPoint(x: 0.42661*width, y: 0.23253*height), control2: CGPoint(x: 0.45269*width, y: 0.20799*height))
        path.addCurve(to: CGPoint(x: 0.5782*width, y: 0.28163*height), control1: CGPoint(x: 0.55211*width, y: 0.20799*height), control2: CGPoint(x: 0.5782*width, y: 0.23253*height))
        path.addCurve(to: CGPoint(x: 0.50229*width, y: 0.35602*height), control1: CGPoint(x: 0.5782*width, y: 0.33072*height), control2: CGPoint(x: 0.55211*width, y: 0.35602*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.50593*width, y: 0.33972*height))
        path.addLine(to: CGPoint(x: 0.56237*width, y: 0.27994*height))
        path.addCurve(to: CGPoint(x: 0.55724*width, y: 0.26027*height), control1: CGPoint(x: 0.56964*width, y: 0.27226*height), control2: CGPoint(x: 0.56751*width, y: 0.26383*height))
        path.addLine(to: CGPoint(x: 0.47621*width, y: 0.23178*height))
        path.addCurve(to: CGPoint(x: 0.45184*width, y: 0.25315*height), control1: CGPoint(x: 0.45911*width, y: 0.22579*height), control2: CGPoint(x: 0.44564*width, y: 0.23553*height))
        path.addLine(to: CGPoint(x: 0.4807*width, y: 0.33391*height))
        path.addCurve(to: CGPoint(x: 0.50593*width, y: 0.33972*height), control1: CGPoint(x: 0.48412*width, y: 0.34365*height), control2: CGPoint(x: 0.49781*width, y: 0.34815*height))
        path.closeSubpath()
        return path
    }()

    static let pathS: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.72709*width, y: 0.26481*height))
        path.addCurve(to: CGPoint(x: 0.74806*width, y: 0.33813*height), control1: CGPoint(x: 0.76703*width, y: 0.29304*height), control2: CGPoint(x: 0.76363*width, y: 0.32121*height))
        path.addCurve(to: CGPoint(x: 0.71844*width, y: 0.34584*height), control1: CGPoint(x: 0.74068*width, y: 0.34615*height), control2: CGPoint(x: 0.72843*width, y: 0.3529*height))
        path.addCurve(to: CGPoint(x: 0.7166*width, y: 0.32456*height), control1: CGPoint(x: 0.71045*width, y: 0.34019*height), control2: CGPoint(x: 0.71096*width, y: 0.33068*height))
        path.addLine(to: CGPoint(x: 0.73942*width, y: 0.29976*height))
        path.addCurve(to: CGPoint(x: 0.73035*width, y: 0.28276*height), control1: CGPoint(x: 0.74586*width, y: 0.29276*height), control2: CGPoint(x: 0.74423*width, y: 0.28559*height))
        path.addLine(to: CGPoint(x: 0.64942*width, y: 0.26623*height))
        path.addCurve(to: CGPoint(x: 0.6283*width, y: 0.26888*height), control1: CGPoint(x: 0.63974*width, y: 0.26421*height), control2: CGPoint(x: 0.6316*width, y: 0.26231*height))
        path.addCurve(to: CGPoint(x: 0.63729*width, y: 0.28149*height), control1: CGPoint(x: 0.625*width, y: 0.27545*height), control2: CGPoint(x: 0.62949*width, y: 0.27983*height))
        path.addLine(to: CGPoint(x: 0.68573*width, y: 0.29214*height))
        path.addCurve(to: CGPoint(x: 0.70034*width, y: 0.32462*height), control1: CGPoint(x: 0.70744*width, y: 0.2969*height), control2: CGPoint(x: 0.70967*width, y: 0.31388*height))
        path.addLine(to: CGPoint(x: 0.69541*width, y: 0.33028*height))
        path.addCurve(to: CGPoint(x: 0.69805*width, y: 0.34442*height), control1: CGPoint(x: 0.69061*width, y: 0.33579*height), control2: CGPoint(x: 0.6926*width, y: 0.3384*height))
        path.addLine(to: CGPoint(x: 0.70652*width, y: 0.35402*height))
        path.addCurve(to: CGPoint(x: 0.70562*width, y: 0.37529*height), control1: CGPoint(x: 0.712*width, y: 0.3603*height), control2: CGPoint(x: 0.71112*width, y: 0.36931*height))
        path.addCurve(to: CGPoint(x: 0.6106*width, y: 0.37288*height), control1: CGPoint(x: 0.68226*width, y: 0.40067*height), control2: CGPoint(x: 0.63989*width, y: 0.39359*height))
        path.addCurve(to: CGPoint(x: 0.58744*width, y: 0.29537*height), control1: CGPoint(x: 0.58181*width, y: 0.35253*height), control2: CGPoint(x: 0.56328*width, y: 0.32162*height))
        path.addCurve(to: CGPoint(x: 0.61786*width, y: 0.28798*height), control1: CGPoint(x: 0.59697*width, y: 0.28501*height), control2: CGPoint(x: 0.60804*width, y: 0.28104*height))
        path.addCurve(to: CGPoint(x: 0.60921*width, y: 0.31051*height), control1: CGPoint(x: 0.62435*width, y: 0.29257*height), control2: CGPoint(x: 0.62907*width, y: 0.30505*height))
        path.addLine(to: CGPoint(x: 0.59303*width, y: 0.31496*height))
        path.addCurve(to: CGPoint(x: 0.58742*width, y: 0.32136*height), control1: CGPoint(x: 0.58862*width, y: 0.31618*height), control2: CGPoint(x: 0.5867*width, y: 0.31916*height))
        path.addCurve(to: CGPoint(x: 0.59867*width, y: 0.33003*height), control1: CGPoint(x: 0.58861*width, y: 0.32484*height), control2: CGPoint(x: 0.59224*width, y: 0.32717*height))
        path.addLine(to: CGPoint(x: 0.68288*width, y: 0.36717*height))
        path.addCurve(to: CGPoint(x: 0.69778*width, y: 0.3659*height), control1: CGPoint(x: 0.69125*width, y: 0.37091*height), control2: CGPoint(x: 0.69546*width, y: 0.36932*height))
        path.addCurve(to: CGPoint(x: 0.69476*width, y: 0.35486*height), control1: CGPoint(x: 0.70023*width, y: 0.36234*height), control2: CGPoint(x: 0.69928*width, y: 0.3595*height))
        path.addLine(to: CGPoint(x: 0.6224*width, y: 0.28156*height))
        path.addCurve(to: CGPoint(x: 0.62141*width, y: 0.25727*height), control1: CGPoint(x: 0.61426*width, y: 0.2734*height), control2: CGPoint(x: 0.61496*width, y: 0.26427*height))
        path.addCurve(to: CGPoint(x: 0.72709*width, y: 0.26481*height), control1: CGPoint(x: 0.64007*width, y: 0.23699*height), control2: CGPoint(x: 0.68898*width, y: 0.23787*height))
        path.closeSubpath()
        return path
    }()


    static let pathT: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.71795*width, y: 0.39023*height))
        path.addLine(to: CGPoint(x: 0.81872*width, y: 0.36254*height))
        path.addCurve(to: CGPoint(x: 0.83045*width, y: 0.35118*height), control1: CGPoint(x: 0.83104*width, y: 0.35922*height), control2: CGPoint(x: 0.83378*width, y: 0.3552*height))
        path.addCurve(to: CGPoint(x: 0.82398*width, y: 0.34849*height), control1: CGPoint(x: 0.82934*width, y: 0.34985*height), control2: CGPoint(x: 0.82711*width, y: 0.34876*height))
        path.addLine(to: CGPoint(x: 0.78854*width, y: 0.34563*height))
        path.addCurve(to: CGPoint(x: 0.77117*width, y: 0.30213*height), control1: CGPoint(x: 0.75955*width, y: 0.34321*height), control2: CGPoint(x: 0.75129*width, y: 0.31482*height))
        path.addCurve(to: CGPoint(x: 0.80728*width, y: 0.31025*height), control1: CGPoint(x: 0.77999*width, y: 0.29651*height), control2: CGPoint(x: 0.79443*width, y: 0.29479*height))
        path.addLine(to: CGPoint(x: 0.84951*width, y: 0.36108*height))
        path.addCurve(to: CGPoint(x: 0.84415*width, y: 0.43069*height), control1: CGPoint(x: 0.87187*width, y: 0.38798*height), control2: CGPoint(x: 0.86817*width, y: 0.41536*height))
        path.addCurve(to: CGPoint(x: 0.80975*width, y: 0.42718*height), control1: CGPoint(x: 0.83343*width, y: 0.43753*height), control2: CGPoint(x: 0.818*width, y: 0.43647*height))
        path.addCurve(to: CGPoint(x: 0.82967*width, y: 0.38717*height), control1: CGPoint(x: 0.79799*width, y: 0.41398*height), control2: CGPoint(x: 0.80582*width, y: 0.40239*height))
        path.addLine(to: CGPoint(x: 0.83727*width, y: 0.38231*height))
        path.addCurve(to: CGPoint(x: 0.84514*width, y: 0.36728*height), control1: CGPoint(x: 0.84487*width, y: 0.37746*height), control2: CGPoint(x: 0.84934*width, y: 0.37233*height))
        path.addCurve(to: CGPoint(x: 0.82495*width, y: 0.3713*height), control1: CGPoint(x: 0.84181*width, y: 0.36327*height), control2: CGPoint(x: 0.83596*width, y: 0.3645*height))
        path.addLine(to: CGPoint(x: 0.73907*width, y: 0.42361*height))
        path.addCurve(to: CGPoint(x: 0.69667*width, y: 0.42383*height), control1: CGPoint(x: 0.72051*width, y: 0.435*height), control2: CGPoint(x: 0.70853*width, y: 0.4381*height))
        path.addCurve(to: CGPoint(x: 0.71795*width, y: 0.39023*height), control1: CGPoint(x: 0.68346*width, y: 0.40793*height), control2: CGPoint(x: 0.69405*width, y: 0.39616*height))
        path.closeSubpath()
        return path
    }()

    static let pathEx: Path = {
        var path = Path()
        let height = CGFloat(1)
        let width = height * Self.aspectRatio
        path.move(to: CGPoint(x: 0.85693*width, y: 0.42835*height))
        path.addLine(to: CGPoint(x: 0.79649*width, y: 0.46048*height))
        path.addCurve(to: CGPoint(x: 0.79151*width, y: 0.46673*height), control1: CGPoint(x: 0.79218*width, y: 0.4627*height), control2: CGPoint(x: 0.79111*width, y: 0.46487*height))
        path.addCurve(to: CGPoint(x: 0.79878*width, y: 0.47033*height), control1: CGPoint(x: 0.79195*width, y: 0.46896*height), control2: CGPoint(x: 0.79405*width, y: 0.4705*height))
        path.addLine(to: CGPoint(x: 0.86389*width, y: 0.46735*height))
        path.addCurve(to: CGPoint(x: 0.90049*width, y: 0.43858*height), control1: CGPoint(x: 0.88451*width, y: 0.46631*height), control2: CGPoint(x: 0.90273*width, y: 0.46073*height))
        path.addCurve(to: CGPoint(x: 0.85693*width, y: 0.42835*height), control1: CGPoint(x: 0.89849*width, y: 0.41887*height), control2: CGPoint(x: 0.87311*width, y: 0.41971*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.75736*width, y: 0.45141*height))
        path.addCurve(to: CGPoint(x: 0.73651*width, y: 0.46078*height), control1: CGPoint(x: 0.74588*width, y: 0.44889*height), control2: CGPoint(x: 0.73925*width, y: 0.45376*height))
        path.addCurve(to: CGPoint(x: 0.74684*width, y: 0.49252*height), control1: CGPoint(x: 0.7321*width, y: 0.47267*height), control2: CGPoint(x: 0.73097*width, y: 0.48922*height))
        path.addCurve(to: CGPoint(x: 0.76835*width, y: 0.48101*height), control1: CGPoint(x: 0.75566*width, y: 0.4943*height), control2: CGPoint(x: 0.76355*width, y: 0.49331*height))
        path.addCurve(to: CGPoint(x: 0.75736*width, y: 0.45141*height), control1: CGPoint(x: 0.77276*width, y: 0.46913*height), control2: CGPoint(x: 0.77414*width, y: 0.45502*height))
        path.closeSubpath()
        return path
    }()
}

extension Boostometer {
    struct Outline: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: 0.88429*width, y: 0.50158*height))
            path.addCurve(to: CGPoint(x: 0.93488*width, y: 0.48434*height), control1: CGPoint(x: 0.91144*width, y: 0.49565*height), control2: CGPoint(x: 0.92501*width, y: 0.49269*height))
            path.addCurve(to: CGPoint(x: 0.95028*width, y: 0.45676*height), control1: CGPoint(x: 0.94268*width, y: 0.47775*height), control2: CGPoint(x: 0.94913*width, y: 0.4662*height))
            path.addCurve(to: CGPoint(x: 0.93732*width, y: 0.41625*height), control1: CGPoint(x: 0.95173*width, y: 0.44481*height), control2: CGPoint(x: 0.94693*width, y: 0.43529*height))
            path.addCurve(to: CGPoint(x: 0.79475*width, y: 0.25593*height), control1: CGPoint(x: 0.90574*width, y: 0.35367*height), control2: CGPoint(x: 0.85693*width, y: 0.2985*height))
            path.addCurve(to: CGPoint(x: 0.50109*width, y: 0.16735*height), control1: CGPoint(x: 0.71088*width, y: 0.19852*height), control2: CGPoint(x: 0.60751*width, y: 0.16734*height))
            path.addCurve(to: CGPoint(x: 0.20748*width, y: 0.25602*height), control1: CGPoint(x: 0.39467*width, y: 0.16737*height), control2: CGPoint(x: 0.29132*width, y: 0.19858*height))
            path.addCurve(to: CGPoint(x: 0.06497*width, y: 0.41639*height), control1: CGPoint(x: 0.14531*width, y: 0.29861*height), control2: CGPoint(x: 0.09652*width, y: 0.35381*height))
            path.addCurve(to: CGPoint(x: 0.05203*width, y: 0.45691*height), control1: CGPoint(x: 0.05537*width, y: 0.43543*height), control2: CGPoint(x: 0.05057*width, y: 0.44495*height))
            path.addCurve(to: CGPoint(x: 0.06744*width, y: 0.48448*height), control1: CGPoint(x: 0.05319*width, y: 0.46635*height), control2: CGPoint(x: 0.05964*width, y: 0.4779*height))
            path.addCurve(to: CGPoint(x: 0.11804*width, y: 0.50171*height), control1: CGPoint(x: 0.07732*width, y: 0.49282*height), control2: CGPoint(x: 0.09089*width, y: 0.49579*height))
            path.addLine(to: CGPoint(x: 0.2098*width, y: 0.52173*height))
            path.addCurve(to: CGPoint(x: 0.25791*width, y: 0.52928*height), control1: CGPoint(x: 0.23572*width, y: 0.52738*height), control2: CGPoint(x: 0.24867*width, y: 0.53021*height))
            path.addCurve(to: CGPoint(x: 0.28068*width, y: 0.52192*height), control1: CGPoint(x: 0.26866*width, y: 0.5282*height), control2: CGPoint(x: 0.27169*width, y: 0.52722*height))
            path.addCurve(to: CGPoint(x: 0.32357*width, y: 0.47418*height), control1: CGPoint(x: 0.28839*width, y: 0.51737*height), control2: CGPoint(x: 0.30012*width, y: 0.50298*height))
            path.addCurve(to: CGPoint(x: 0.36678*width, y: 0.43463*height), control1: CGPoint(x: 0.33565*width, y: 0.45935*height), control2: CGPoint(x: 0.35017*width, y: 0.446*height))
            path.addCurve(to: CGPoint(x: 0.50114*width, y: 0.39405*height), control1: CGPoint(x: 0.40515*width, y: 0.40834*height), control2: CGPoint(x: 0.45244*width, y: 0.39406*height))
            path.addCurve(to: CGPoint(x: 0.63552*width, y: 0.43458*height), control1: CGPoint(x: 0.54984*width, y: 0.39404*height), control2: CGPoint(x: 0.59714*width, y: 0.40831*height))
            path.addCurve(to: CGPoint(x: 0.67875*width, y: 0.47412*height), control1: CGPoint(x: 0.65213*width, y: 0.44596*height), control2: CGPoint(x: 0.66666*width, y: 0.45929*height))
            path.addCurve(to: CGPoint(x: 0.72166*width, y: 0.52185*height), control1: CGPoint(x: 0.70221*width, y: 0.50291*height), control2: CGPoint(x: 0.71395*width, y: 0.5173*height))
            path.addCurve(to: CGPoint(x: 0.74444*width, y: 0.5292*height), control1: CGPoint(x: 0.73064*width, y: 0.52714*height), control2: CGPoint(x: 0.73368*width, y: 0.52812*height))
            path.addCurve(to: CGPoint(x: 0.79254*width, y: 0.52164*height), control1: CGPoint(x: 0.75367*width, y: 0.53013*height), control2: CGPoint(x: 0.76662*width, y: 0.5273*height))
            path.addLine(to: CGPoint(x: 0.88429*width, y: 0.50158*height))
            path.closeSubpath()
            return path
        }
    }

    struct Needle: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: 0.50949*width, y: 0.13304*height))
            path.addCurve(to: CGPoint(x: 0.49929*width, y: 0.1329*height), control1: CGPoint(x: 0.50895*width, y: 0.12765*height), control2: CGPoint(x: 0.50003*width, y: 0.12753*height))
            path.addLine(to: CGPoint(x: 0.4641*width, y: 0.39144*height))
            path.addLine(to: CGPoint(x: 0.53552*width, y: 0.39144*height))
            path.addLine(to: CGPoint(x: 0.50949*width, y: 0.13304*height))
            path.closeSubpath()
            return path
        }
    }
}
