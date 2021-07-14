#!bin/sh

target=""

function get_github_latest {
	echo "$(curl --silent "https://api.github.com/repos/$target/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')"
}

target="fwcd/kotlin-language-server"
curl -L https://github.com/$target/releases/download/$(get_github_latest)/server.zip > kotlin-lsp.zip
unzip kotlin-lsp.zip
rm kotlin-lsp.zip
mv server kotlin-lsp
chmod 755 kotlin-lsp/bin/kotlin-language-server
sudo ls kotlin-lsp/bin/kotlin-language-server /bin/kotlin_language_server
echo "Downloaded KotlinLSP"

sudo pacman -S rust-analyzer
echo "Downloaded RustLSP"
