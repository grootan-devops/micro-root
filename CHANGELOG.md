# Changelog

All notable changes to this project are documented here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project follows [Semantic Versioning](https://semver.org/).

## [Unreleased]

## [1.2.2] - 2026-11-25

### Security

- Rebuilt on `registry.access.redhat.com/ubi9/ubi-micro:9.9` (RHEL 9.9) to pick up fixed `glibc` and `libgcc` packages, clearing the fixable CVEs tracked in ZA-881. `1.2.1` carried this same changelog entry but was promoted from a candidate still built on the 9.8 base (`pr.yml` was not updated before merge); this release corrects that.

## [1.2.1] - 2026-11-25

### Security

- Rebuilt on `registry.access.redhat.com/ubi9/ubi-micro:9.9` (RHEL 9.9) to pick up fixed `glibc` and `libgcc` packages, clearing the fixable CVEs tracked in ZA-881.

## [1.2.0] - 2026-10-21

### Changed

- Updated CI library to `1.6.0`
- Moved image test to ci library

## [1.1.0] - 2026-09-22

### Changed

- Pinned the GitHub Actions build, verification, and release workflows to `github-ci-library` 1.0.0.

## [1.0.0] - 2026-09-22

### Added

- Initial Buildah-based UBI Micro root image.
- GitHub Actions build, smoke-test, security-scan, and release workflows.
