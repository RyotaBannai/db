##
### MySQL で初めてinstallした後にrootのパスの設定や、ユーザーを作成するなど
- [mysqlに慣れる、を参照](https://qiita.com/yukibe/items/4ba2aa49510ab1f6b1f1)
- rootのパス設定方法. `SET PASSWORD FOR root@localhost='auth_string';` [こちらを参照](https://www.dbonline.jp/mysql/user/index2.html)
- もしすでに設定している場合等は、`ALTER USER root@localhost IDENTIFIED BY 'auth_string';`で変更.
- コマンドライン から変更 `mysqladmin password 'auth_string' -u root@localhost -p` : パスワードの指定にシングルクォーテーションがあってもなくても問題なし.
- 念のため、初めにroot でminitorに入って新しいユーザーを作成してパスワードをうまく設定できるか確かめてから、rootの設定を変更するようにしたほうがいい。