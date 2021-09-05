#!bin/sh

target=""

function get_github_latest {
	echo "$(curl --silent "https://api.github.com/repos/$target/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')"
}

# kotlin
target="fwcd/kotlin-language-server"
curl -L https://github.com/$target/releases/download/$(get_github_latest)/server.zip > kotlin-lsp.zip
unzip kotlin-lsp.zip
rm kotlin-lsp.zip
mv server kotlin-lsp
chmod 755 kotlin-lsp/bin/kotlin-language-server
sudo ls kotlin-lsp/bin/kotlin-language-server /bin/kotlin_language_server
echo "Downloaded KotlinLS"

# java
git clone git@github.com:georgewfraser/java-language-server.git
cd java-language-server
sudo ln -s /usr/lib/jvm/java-16-openjdk/bin/jlink  /bin/jlink
./scripts/link_linux.sh
mvn package -DskipTests
sudo ln -s dist/lang_server_linux.sh /bin/
cd ..
echo "Downloaded JavaLS"

# rust
sudo pacman -S rust-analyzer
echo "Downloaded RustLS"
