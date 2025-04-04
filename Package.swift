// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "CHDF5",
    products: [
            .library(name: "libhdf5", targets: ["libhdf5"]),
        ],
        targets: [
            .systemLibrary(name: "libhdf5", path: "."),
        ]
    //pkgConfig: "libhdf5"
)
