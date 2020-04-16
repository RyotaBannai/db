set @str = BINARY 'New York';
select LOWER(@str), LOWER(CONVERT(@str USING latin1));
-- 大小を変換する時にバイナリーは非バイナリーに変換