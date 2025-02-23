package main

import (
	"bytes"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"unsafe"

	"golang.org/x/text/encoding/japanese"
	"golang.org/x/text/transform"
)

const dest = "./"

func main() {
	//! ファイル名を抜き出して宛先ファイルを作成
	var source = os.Args[1]
	var basename = filepath.Base(source)
	basename = strings.Split(basename, ".")[0]
	dist, err := os.Create(dest + "/" + basename + ".txt")
	defer dist.Close()

	//! 引数で指定されたシナリオを読み込む
	f, err := os.Open(source)
	if err != nil {
		log.Println(err)
		return
	}
	defer f.Close()

	//! 宛先ファイルに内容を丸コピ
	b, err := ioutil.ReadAll(f)
	if err != nil {
		log.Println(err)
		return
	}

	//! オリジナルはShift-JISなのでデコード
	reader := transform.NewReader(bytes.NewReader(b), japanese.ShiftJIS.NewDecoder())
	orig, err := ioutil.ReadAll(reader)
	if err != nil {
		log.Println(err)
		return
	}
	origStr := *(*string)(unsafe.Pointer(&orig))
	delTag(&origStr)
	delAtTag(&origStr)

	//! コピー予定テキストをshift-jisに変換して書き込み
	reader = transform.NewReader(strings.NewReader(origStr), japanese.ShiftJIS.NewEncoder())
	origJis, err := ioutil.ReadAll(reader)
	if err != nil {
		log.Println(err)
		return
	}
	dist.Write(origJis)
}

func delTag(dist *string) {
	//! セリフである"人名「.*」"にタグを仕込む(正規表現)
	base_rep := regexp.MustCompile(`.*\[.*?\]`)
	name_rep := regexp.MustCompile(`name=\".*?\"`)
	tag_rep  := regexp.MustCompile(`\[.*?\]`)

	onFind := func(s string) string {
		//! コメント行は無視
		if strings.HasPrefix(s, ";") == true {
			return s;
		}

		//! 人名をキャッチしたときの処理
		names := name_rep.FindAllString(s, -1)
		if len(names) > 0 {
			name := strings.ReplaceAll(names[0], "\"", "")
			name = strings.ReplaceAll(name, "name=", "")
			return "#" + name
		}

		//! タグを除去
		tags := tag_rep.FindAllString(s, -1)
		for _, tag := range tags {
			s = strings.ReplaceAll(s, tag, "")
		}
		return s
	}

	*dist = base_rep.ReplaceAllStringFunc(*dist, onFind)
}

func delAtTag(dist *string) {
	base_rep := regexp.MustCompile(`.*\@.*`)
	onFind := func(s string) string {
		//! コメント行は無視
		if strings.HasPrefix(s, ";") == true {
			return s;
		}
		return ""
	}
	*dist = base_rep.ReplaceAllStringFunc(*dist, onFind)
}