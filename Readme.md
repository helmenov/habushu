# 畧酒(Habu-Shu; IDSCI standard python development environment)

情報データ科学部　プログラミング演習2 の演習用環境です．

## requirements

0. visual studio code

1. `code`の拡張パッケージ [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## introduction

0. 作業用ディレクトリを `C:\Users\kotaro\psp2`　とします．

1. このディレクトリに`https://github.com/helmenov/habushu`の中身をすべてダウンロードして配置します．
   [zipfile](https://github.com/helmenov/habushu/archive/refs/heads/main.zip)

    以下のようなディレクトリ構成にしてください．

    ```
    psp2
    ┣ Dockerfile
    ┣ .devcontainer ┳━ devcontainer.json
    ┃               ┗━ postAttach.sh 
    ┣ pyproject.toml
    ┣ poetry.lock
    ┗ Readme.md
    ```

    gitを使うともっと楽です．

    `git clone https://github.com/helmenov/habushu.git C:\Users\kotaro\psp2`

2. vscodeでこの作業用ディレクトリを開きます．

   すると，右下端から「フォルダーに開発コンテナーの構成ファイルが含まれています．コンテナーで開発するフォルダーをもう一度開きます」とでるので，「コンテナーで再度開く」を押します．

3. しばらくすると，再構築が終わり，pythonやpoetryが使える環境に入っている状態になります．
    - 初期状態として，`numpy`,`matplotlib`,`pandas`,`ipykernel`,`mypy`がライブラリ導入済みです．
    - ライブラリを加えたい場合は，vscodeのターミナルで，`poetry add scipy` などのようにパッケージを加えてください．加えたあとに`poetry install`すると反映されます．

    


