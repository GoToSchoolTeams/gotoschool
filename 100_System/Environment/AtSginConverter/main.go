package main

import (
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"strings"
)

func main() {
	//! 出力ファイル名を計算する
	inputFile := os.Args[1]
	distFileName := getDistFileName(inputFile)

	// ファイルを読み込む
	content, err := os.ReadFile(inputFile)
	if err != nil {
		fmt.Println("ファイルの読み込みに失敗しました:", err)
		return
	}

	// @のマクロを[]のマクロに変換
	updatedData := convAtSigntoSocket(string(content))

	// 変換後の内容を新しいファイルに書き込む
	err = os.WriteFile(distFileName, []byte(updatedData), 0777)
	if err != nil {
		fmt.Println("ファイルの書き込みに失敗しました:", err)
		return
	}

	fmt.Println("変換が完了しました。結果は", distFileName, "に保存されました。")
}

// 指定されたテキストファイルのパスから出力先とファイル名を返す
func getDistFileName(inputFile string) string {
	if !filepath.IsAbs(inputFile) {
		fmt.Println("ファイルパスを指定してください")
		return ""
	}
	i_dir := filepath.Dir(inputFile)
	i_file := strings.Split(filepath.Base(inputFile), ".")[0]
	i_ext := filepath.Ext(inputFile)
	return filepath.Join(i_dir, i_file+"_fmt"+i_ext)
}

// @で書かれたマクロを大括弧マクロに変換する
func convAtSigntoSocket(content string) string {
	// 正規表現で@で始まり改行で終わる文字列を探す
	ptn := regexp.MustCompile(`@.*\n`)

	// マッチした文字列を大括弧で囲う変換を行う関数
	rep := func(matched string) string {
		return "[" + matched[1:len(matched)-2] + "]\n"
	}

	// マッチした文字列を新しい文字列に置換
	return ptn.ReplaceAllStringFunc(string(content), rep)
}
