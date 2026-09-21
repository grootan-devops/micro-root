# micro-root

Minimal UBI Micro base image with the runtime utilities needed by the other
Grootan base images. The image is built directly with Buildah and contains no
Dockerfile.

## Image

- Registry: Docker Hub
- Repository: `grootantec/micro-root`
- Release: `1.0.0`
- Base: `registry.access.redhat.com/ubi9/ubi-micro:9.8-1784702951`
- Runtime: `bash`, `coreutils-single`, and `dumb-init 1.2.5`

The default command is `bash` and the entrypoint is `/usr/bin/dumb-init --`.

## Build and test

The GitHub Actions workflows build the image with Buildah, execute
`ci_image_test.sh` as UID `10001:10001`, and run a blocking Trivy image scan.
The same checks run for pull requests and release candidates.

## License

This project is licensed under the GNU Affero General Public License v3.0.
See [LICENSE.md](LICENSE.md).
