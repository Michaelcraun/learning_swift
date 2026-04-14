# Swift Learning Projects

This repository groups together several small Swift practice projects that were originally built as separate learning exercises. Keeping them in one place makes it easier to review UIKit, SpriteKit, SwiftUI, Vapor, networking, Firebase, and basic app-logic experiments side by side.

## Project Descriptions

Each folder is a standalone Swift learning project, with some built as Xcode apps and others as Swift package-based Vapor services.

| Project | Description |
| --- | --- |
| `ColorGame` | A SpriteKit arcade game with lane-based movement, enemy spawning, timers, scoring, sound effects, and a game-over flow, focused on scene management and collision-driven gameplay. |
| `Swift-AsyncAwait` | A SwiftUI movie search sample that uses `async`/`await`, `URLSession`, and a `@MainActor` view model to fetch IMDb data and poster images into a refreshable list. |
| `Vapor-Basics` | A server-side Swift learning project built with Vapor that explores route registration, route collections, grouped endpoints, request decoding, and simple JSON API responses. |
| `Vapor-Fluent` | A Vapor and Fluent practice API that uses PostgreSQL-backed models, migrations, and controllers to manage movies, reviews, and related actor data. |
| `htchhkr` | A more complete ride-sharing prototype that combines UIKit, MapKit, Core Location, Firebase auth/database calls, and trip-state updates to coordinate passengers, drivers, and pickup flows. |
| `htchhkr-dev` | An earlier stripped-down UIKit prototype for the same ride-sharing idea, focused more narrowly on navigation shell, map interactions, splash animation, and basic custom controls. |
| `iCalc` | A storyboard-based UIKit calculator exercise that captures digit and operator taps, builds an expression string, and attempts manual order-of-operations evaluation with label-based formula and answer displays. |

## Repository Structure

```text
.
├── ColorGame
├── Swift-AsyncAwait
├── Vapor-Basics
├── Vapor-Fluent
├── htchhkr
├── htchhkr-dev
└── iCalc
```

Most projects follow a similar Swift project layout, with the Apple-platform samples centered on Xcode project files, source code, asset catalogs, and storyboards, while the Vapor samples use Swift package structure with `Sources`, `Tests`, and server configuration files.

## How To Use This Repo

1. Open the project folder you want to inspect.
2. Open the matching `.xcodeproj`, workspace, or `Package.swift` depending on the project.
3. Build and run that project independently, or start the Vapor service from its package, adding any project-specific secrets or services if the sample depends on them.

These projects are intentionally small and self-contained, so they work best as isolated references for learning specific Swift and iOS development patterns.

## Why This Repo Exists

Instead of spreading related Swift practice across multiple repositories, this collection keeps the work in one place so it is easier to:

- compare older UIKit patterns with newer SwiftUI and concurrency examples
- revisit focused experiments without hunting across separate repos
- track learning progress across games, networking samples, and map-based apps
- preserve tutorial-style snapshots as small reference projects

## Notes

- Some projects reflect older APIs and dependency patterns, including Firebase `FIR*` types, storyboard-heavy UIKit flows, and checked-in CocoaPods artifacts.
- `Swift-AsyncAwait` includes a hard-coded RapidAPI key in source, so treat it as a learning snapshot rather than production-ready configuration.
