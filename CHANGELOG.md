# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.0] - 2021/07/17

### Added

- Surface/LightingRamp (rewrite)

### Removed

- Surface/Ramp

## [1.1.1] - 2021/06/30

### Changed

- Updated available shaders in README
- Added new package keywords

## [1.1.0] - 2021/06/30

### Added

- Surface/Checkerboard
- Surface/Cubemap

### Removed

- Default/Compute
- Default/RayTracing
- Lit/Diffuse
- Lit/DiffuseSimple
- Lit/DiffuseWithShadows

### Changed

- Default shaders set as hidden
- Color properties added to Unlit/Checkerboard
- Color property removed from Unlit/ShadowsOnly

## [1.0.1] - 2021/04/13

### Changed

- Removed TODO from default compute shader

### Fixed

- Moved non-compiled assets outside of the Runtime directory

## [1.0.0] - 2021/03/21

### Added

#### Surface

- Decal
- DetailTexture
- Diffuse
- LinearFog
- NormalExtrusion
- Ramp
- RimLighting
- SingleColor
- Sliced
- SpecularSimple
- WorldReflection
- WrappedDiffuse

#### Lit

- Diffuse
- DiffuseSimple
- DiffuseWithShadows
- ShadowCasting

#### Unlit

- Checkerboard
- ShadowsOnly
- SimpleTexture
- SingleColor
- SkyReflection
- SkyReflectionPerPixel
- Triplanar
- WorldSpaceNormals

#### Default

- Compute
- ImageEffect
- RayTracing
- Surface
- Unlit

#### Include

- Dither
- Encode
- Jitter
- Pi
