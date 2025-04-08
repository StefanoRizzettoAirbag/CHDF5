// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "CHDF5",
    
    products: [
        .library(name: "CHDF5", targets: ["CHDF5"]),
    ],
    targets: [
        .target(name: "CHDF5",
                path: ".",
                publicHeadersPath: ".",
                //publicHeadersPath: "/opt/homebrew/Cellar/hdf5/1.14.6/include",
                cSettings: [
                                .headerSearchPath("/opt/homebrew/Cellar/hdf5/1.14.6/include")
                            ],
                            linkerSettings: [
                                .unsafeFlags(["-L/opt/homebrew/Cellar/hdf5/1.14.6/lib", "-lhdf5"])
                            ]
               )
        /*
        .systemLibrary(
            name: "libhdf5",
            path: "/opt/homebrew/Cellar/hdf5/1.14.6/lib",
           
            pkgConfig: "/opt/homebrew/Cellar/hdf5/1.14.6/lib/pkgconfig/hdf5.pc"
        ),
         */
    ]
)
