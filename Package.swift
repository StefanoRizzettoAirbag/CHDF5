// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "HDF5Wrapper",
    products: [
        .library(name: "HDF5Wrapper", targets: ["HDF5Wrapper"]),
    ],
    targets: [
        .target(
            name: "HDF5Wrapper",
            dependencies: [],
            path: "Sources/HDF5Wrapper",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("-I/opt/homebrew/Cellar/hdf5/1.14.6/include")
            ],
            linkerSettings: [
                .unsafeFlags(["-L/opt/homebrew/Cellar/hdf5/1.14.6/lib", "-lhdf5"])
            ]
        )
    ]
)
