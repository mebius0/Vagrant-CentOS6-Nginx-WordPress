# Vagrantfile（CentOS6,Nginx,WordPress）

================================

CentOS6環境でWordPressを使えるようにするVagrantfileです。
WordPressを用途別に利用できるように複数インストールしています。
現在は日本語環境のみの対応。

環境：
* CentOS6
* Nginx
* php-fpm
* WordPress

================================

## 使い方

1. Virtualboxをインストール　https://www.virtualbox.org/

2. Vagrantをインストール　http://www.vagrantup.com/

3. プラグインをインストール
* vagrant plugin install vagrant-omnibus
* vagrant plugin install vagrant-hostsupdater

4. このレポジトリをダウンロード

5. 「vagrant up」で起動する
