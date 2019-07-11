Firebirdの埋込DatabaseをActiveReportsのDatasourceとして使う
---------------

SQLiteでは日付型がない。

日付型がないためActiveReports Designer側で日付の書式設定が効かない。

Firebirdは日付型がある。

FirebirdをActiveReportsのSampleデータに使えないかを考察する。

## 環境
- Windows10 Pro/Home
- ActiveReports 12J
- Firebird ODBC Driver for Win32
- Firebird 3.0.4 32bit Kit
- FAManagementStudio_x86

## 手順

1. [Firebird ODBC Driver Win32](https://www.firebirdsql.org/en/odbc-driver/) を入手しインストール
2. [Firebird 3.0.4 32bit Kit](https://firebirdsql.org/en/firebird-3-0/)をインストール
3. FBReports.rdlxをActiveReportsで実行

通常はこれでNEWDB.FDBにある日付のデータの閲覧が可能になる。

Firebird 32bit版をインストールできない場合やインストール場所がC:\Program File(x86)\Firebird\ にない場合はデータを表示することはできないだろう。

そういった場合はこのフォルダにあるfbclient.dllを使ってNEWDB.FDBの日付データを表示するようにする。

## Firebirdをインストールしない手順

1. [Firebird ODBC Driver Win32](https://www.firebirdsql.org/en/odbc-driver/) を入手しインストール
2. dist.ps1を実行。
    - FBRreports.rdlxのConnectStringの情報がこのフォルダにあるfbclient.dllに書き換わる。
    - FBReports1.rdlxが出現
3. FBReports1.rdlxをActiveReportsで実行

## 組込DBの内容を編集

[FAManagementStudio](https://github.com/degarashi0913/FAManagementStudio)を使う。

## 結論
やっぱり面倒。

SQLiteで日付型無いかなぁ…。

## 質問

Q:
何故、32bit版を使うの？

A:
ActiveReports Designerが32bit版。

32bitのデータソースしか見ることができません。