cask "mcpforge" do
  arch arm:   "aarch64-apple-darwin",
       intel: on_system_conditional(macos: "x86_64-apple-darwin", linux: "x86_64-unknown-linux-gnu")

  version "0.2.1"
  sha256 arm:          "a87e41d02bdf025fc4be4a984d66a44c03969c7e6eec138d4f4455738e947f71",
         intel:        "c37e048cbe470809239212cf8c1653ac67bd20f8e4a7e87ed7861757e996a126",
         arm64_linux:  "31af6ef3b72b6dea3522c3f78f7bec9f31640144db34b49b917d9ae8de30694a",
         x86_64_linux: "21df55846c0bead0548ee4f0164db3c52edcc5c0116f4e0a232f07b42091037f"

  url "https://github.com/nordicnode/mcpforge/releases/download/v#{version}/mcpforge-#{arch}.tar.gz"
  name "mcpforge"
  desc "Syncs mcp clients"
  homepage "https://github.com/nordicnode/mcpforge"

  binary "mcpforge"

  # No zap stanza required zap trash: ""
end
