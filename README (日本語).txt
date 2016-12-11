=== C# script batch 1.00 ===

C# 言語をスクリプトのようにすぐに実行するバッチ ファイルです。
Windows 7/10 でプリインストールされている C# コンパイラーを使って実行します。
bash (Ubuntu Linux) では、mono をインストールしてください。


C# (.cs) のサンプル： Hello, world! と表示します。
---------------------------------------------------------
using  s = System;  // Alias "s::"

class MainClass
{
	static void  Main()
	{
		s::Console.WriteLine( "Hello, world!" );
	}
}
---------------------------------------------------------

.cs ファイルをダブルクリックして、cs_script.bat で開くように設定してください。
バッチファイルや WSH (VBScript/JScript) と同様に C# を実行できるようになります。
設定しなくても、.cs ファイルを cs_script.bat にドラッグ＆ドロップすれば実行できます。

★悪意のある .cs ファイルを実行しないよう注意してください！

コマンド プロンプトから実行するときは、/c オプションを付けると終了時にキー入力を
待たなくなります。
例：
---------------------------------------------------------
cs_script.bat  new.cs  /c  Parameter1
---------------------------------------------------------

bash から実行するときは、cs-script から実行します。
例：
---------------------------------------------------------
./cs-script  new.cs  Parameter1
---------------------------------------------------------

.cs ファイルに、// Debug=on の記述があると、デバッガーを起動します。
ただし、Visual Studio Express 2015 for Windows Desktop などがインストールされていて、
ユーザーのドキュメント フォルダーの Visual Studio 2015\Projects\cs_script に
cs_script_project.zip の内容が展開されている必要があります。

bash 環境は、デバッガーに対応していません。

C# コンパイラーのバージョンや、デバッグ用プロジェクトをを変更するときは、
cs_script.bat を編集してください。


cs_script ver 1.00
cs_script is provided under 3-clause BSD license.
Copyright (C) 2016 Sofrware Design Gallery "Sage Plaisir 21" All Rights Reserved.

ソフトウェアデザイン館 Sage Plaisir 21  http://www.sage-p.com/

