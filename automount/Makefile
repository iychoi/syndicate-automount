include ../buildconf.mk

AMD_BUILD := $(BUILD_LIBEXEC_DIR)/amd-launch \
			 $(BUILD_LIBEXEC_DIR)/list-hosts \
			 $(BUILD_LIBEXEC_DIR)/list-volumes \
			 $(BUILD_LIBEXEC_DIR)/poll-host \
			 $(BUILD_LIBEXEC_DIR)/poll-server-pubkey \
			 $(BUILD_LIBEXEC_DIR)/poll-volumes \
			 $(BUILD_LIBEXEC_DIR)/sign-key \
			 $(BUILD_AMD)/keysignerd \
			 $(BUILD_AMD)/syndicate-amd-server \
			 $(BUILD_AMD)/syndicate-amd

AMD_INSTALL := $(LIBEXECDIR)/amd-launch \
			   $(LIBEXECDIR)/list-hosts \
			   $(LIBEXECDIR)/list-volumes \
			   $(LIBEXECDIR)/poll-host \
			   $(LIBEXECDIR)/poll-server-pubkey \
			   $(LIBEXECDIR)/poll-volumes \
			   $(LIBEXECDIR)/sign-key \
			   $(BINDIR)/keysignerd \
			   $(BINDIR)/syndicate-amd-server \
			   $(BINDIR)/syndicate-amd

all: $(AMD_BUILD)

$(BUILD_LIBEXEC_DIR)/% : libexec/%
	@mkdir -p "$(shell dirname "$@")"
	cp -a "$<" "$@"

$(BUILD_AMD)/% : %
	@mkdir -p "$(shell dirname "$@")"
	cp -a "$<" "$@"

.PHONY: clean 
clean:
	rm -f $(AMD_BUILD)

.PHONY: install
install: $(AMD_INSTALL)

$(BINDIR)/%: $(BUILD_AMD)/%
	@mkdir -p "$(shell dirname "$@")"
	@rm -f "$@"
	cp -a "$<" "$@"

$(LIBEXECDIR)/%: $(BUILD_LIBEXEC_DIR)/%
	@mkdir -p "$(shell dirname "$@")"
	@rm -f "$@"
	cp -a "$<" "$@"

.PHONY: uninstall
uninstall:
	rm -f $(AMD_INSTALL)

print-%: ; @echo $*=$($*)
