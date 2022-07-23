package main

import (
	"bytes"
	"fmt"
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
	dist, err := os.Create(dest + "/" + basename + ".ks")
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

	//! コピー予定テキストに処理を実施
	addPLN(&origStr)
	addMWindowMacro(&origStr)
	addLR(&origStr)

	//! コピー予定テキストをshift-jisに変換して書き込み
	reader = transform.NewReader(strings.NewReader(origStr), japanese.ShiftJIS.NewEncoder())
	origJis, err := ioutil.ReadAll(reader)
	if err != nil {
		log.Println(err)
		return
	}
	dist.Write(origJis)
}

func addPLN(dist *string) {
	//! セリフ、語りのダブル改行にタグを仕込む
	*(dist) = strings.ReplaceAll(*dist, "。\r\n\r\n", "。[plc]\r\n\r\n")
	*(dist) = strings.ReplaceAll(*dist, "」\r\n\r\n", "」[plc]\r\n\r\n")
	*(dist) = strings.ReplaceAll(*dist, "？\r\n\r\n", "？[plc]\r\n\r\n")
	*(dist) = strings.ReplaceAll(*dist, "』\r\n\r\n", "』[plc]\r\n\r\n")
	*(dist) = strings.ReplaceAll(*dist, "！\r\n\r\n", "！[plc]\r\n\r\n")
	*(dist) = strings.ReplaceAll(*dist, "、\r\n\r\n", "、[plc]\r\n\r\n")
	*(dist) = strings.ReplaceAll(*dist, "―\r\n\r\n", "―[plc]\r\n\r\n")
}

func addLR(dist *string) {
	//! 改行1このみの場合ににタグを仕込む(ダブル改行後にplcが仕込まれている前提)
	*(dist) = strings.ReplaceAll(*dist, "。\r\n", "。[lr]\r\n")
	*(dist) = strings.ReplaceAll(*dist, "」\r\n", "」[lr]\r\n")
	*(dist) = strings.ReplaceAll(*dist, "？\r\n", "？[lr]\r\n")
	*(dist) = strings.ReplaceAll(*dist, "、\r\n", "、[lr]\r\n")
}

func addMWindowMacro(dist *string) {
	//! セリフである"人名「.*」"にタグを仕込む(正規表現)
	rep := regexp.MustCompile(`(#.*\n)`)

	//! "人名「"をキャッチしたときの処理
	findDialog := func(s string) string {
		name := strings.Split(s, "#")[1]
		name = strings.ReplaceAll(name, "\r\n", "")
		log.Println(name)
		tagedDialog := fmt.Sprintf("[shownametag name=\"%s\" visible=true]\r\n", name)
		return tagedDialog
	}

	*dist = rep.ReplaceAllStringFunc(*dist, findDialog)
}
