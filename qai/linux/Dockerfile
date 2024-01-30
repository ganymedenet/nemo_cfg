# Use a base image with the required GLIBC version (e.g., Ubuntu 22.04 which has GLIBC 2.34).
FROM ubuntu:22.04

# Copy the executable into the container.
COPY ./cmake-build-debug/cpp_linux /usr/local/bin/cpp_linux

# Set the executable's permissions (if needed).
RUN chmod +x /usr/local/bin/cpp_linux

# Run the program when the container starts.
CMD ["/usr/local/bin/cpp_linux"]


# docker build . -t lin