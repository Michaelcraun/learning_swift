# Swift Learning Projects

This repository groups together several small Apple-platform practice apps that were originally built as separate learning projects. Keeping them in one place makes it easier to review different UIKit, SpriteKit, SwiftUI, networking, and Firebase experiments side by side.

## Project Descriptions

Each folder is a standalone Xcode project built around a specific Swift or iOS learning exercise.

| Project | Description |
| --- | --- |
| `ColorGame` | A SpriteKit arcade game with lane-based movement, enemy spawning, timers, scoring, sound effects, and a game-over flow, focused on scene management and collision-driven gameplay. |
| `Swift-AsyncAwait` | A SwiftUI movie search sample that uses `async`/`await`, `URLSession`, and a `@MainActor` view model to fetch IMDb data and poster images into a refreshable list. |
| `htchhkr` | A more complete ride-sharing prototype that combines UIKit, MapKit, Core Location, Firebase auth/database calls, and trip-state updates to coordinate passengers, drivers, and pickup flows. |
| `htchhkr-dev` | An earlier stripped-down UIKit prototype for the same ride-sharing idea, focused more narrowly on navigation shell, map interactions, splash animation, and basic custom controls. |

## Repository Structure

```text
.
├── ColorGame
├── Swift-AsyncAwait
├── htchhkr
└── htchhkr-dev
```

Most projects follow a similar Xcode-oriented layout with Swift source files, asset catalogs, storyboards or app entry points, and project metadata such as `.xcodeproj` bundles.

## How To Use This Repo

1. Open the project folder you want to inspect.
2. Open the matching `.xcodeproj` or workspace for that app in Xcode.
3. Build and run that project independently, adding any project-specific secrets or services if the sample depends on them.

These projects are intentionally small and self-contained, so they work best as isolated references for learning specific Swift and iOS development patterns.

## Why This Repo Exists

Instead of spreading related Swift practice across multiple repositories, this collection keeps the work in one place so it is easier to:

- compare older UIKit patterns with newer SwiftUI and concurrency examples
- revisit focused experiments without hunting across separate repos
- track learning progress across games, networking samples, and map-based apps
- preserve tutorial-style snapshots as small reference projects

## Notes

- Some projects reflect older APIs and dependency patterns, including Firebase `FIR*` types, storyboard-heavy UIKit flows, and checked-in CocoaPods artifacts.
- The project folders still contain nested `.git` directories, so this root repository is not fully consolidated yet.
- `Swift-AsyncAwait` includes a hard-coded RapidAPI key in source, so treat it as a learning snapshot rather than production-ready configuration.
