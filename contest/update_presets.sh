git submodule update --remote
rbx presets sync
rbx contest each presets sync
if [ -d "mineira25-warmup" ]; then
	cd mineira25-warmup
	rbx presets sync
	rbx contest each presets sync
	cd ..
fi
if command -v yamlfix 2>&1 > /dev/null
then
	yamlfix .
fi
