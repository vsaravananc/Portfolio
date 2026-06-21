
help:
	@echo "Available commands:"
	@echo "  make clean   - Clean the project and reset dependencies"
	@echo "  make run     - Start the Jaspr development server"

clean:
	pkill -f dart && rm -rf .dart_tool rm -rf build rm pubspec.lock && dart pub get

run:
	jaspr serve

both:
	 make clean & make run