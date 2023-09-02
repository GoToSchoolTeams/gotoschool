using System;
using System.Drawing;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        // ディレクトリのパスを引数で指定
        var directoryPath = args[0];

        // ディレクトリ内のすべてのファイルを取得
        string[] fileNames = Directory.GetFiles(directoryPath);

        // ファイル名をコンソールに出力
        for(var i = 0; i < fileNames.Length; i++)
        {
            var fileName = fileNames[i];
            var file_type = Path.GetExtension(fileName);
            var dir_path = Path.GetDirectoryName(fileName);
            var name = Path.GetFileName(fileName);
            if (file_type.Contains("png") == true)
            {
                //! 画像の読み込み
                using (var orig_image = new Bitmap(fileName))
                {
                    //! 透明じゃない領域の計算
                    var target_rect = GetRect(orig_image);

                    //! 空オブジェクトだった = 変換不可なのでskip
                    if (target_rect == Rectangle.Empty) continue;

                    //! 計算された領域で画像を切り取る
                    using (var dest_image = orig_image.Clone(target_rect, orig_image.PixelFormat))
                    {
                        //! プリフィックスをつけて保存
                        var new_name = Path.Combine(dir_path, $"cut_{name}");
                        dest_image.Save(new_name);
                    }
                }
            }
        }
    }

    static Rectangle GetRect(Bitmap bmp)
    {
        // 画像のピクセルを byte[] にコピーする
        var rect = new Rectangle(0, 0, bmp.Width, bmp.Height);
        var bmpData = bmp.LockBits(rect, System.Drawing.Imaging.ImageLockMode.ReadOnly, bmp.PixelFormat);
        var bytes = Math.Abs(bmpData.Stride) * bmp.Height;
        var rgbValues = new byte[bytes];
        System.Runtime.InteropServices.Marshal.Copy(bmpData.Scan0, rgbValues, 0, bytes);
        bmp.UnlockBits(bmpData);

        int x0 = bmp.Width;
        int y0 = bmp.Height;
        int x1 = 0;
        int y1 = 0;

        bool isCutable = false;

        // 透明でないピクセルを探す
        for (int i = 3; i < rgbValues.Length; i += 4)
        {
            // Aの値が0なら透明ピクセル
            if (rgbValues[i] != 0)
            {
                isCutable = true;
                int x = i / 4 % bmp.Width;
                int y = i / 4 / bmp.Width;

                if (x0 > x) x0 = x;
                if (y0 > y) y0 = y;
                if (x1 < x) x1 = x;
                if (y1 < y) y1 = y;
            }
        }

        if(isCutable)
        {
            return new Rectangle(x0, y0, x1 - x0, y1 - y0);
        }
        else
        {
            return Rectangle.Empty;
        }
    }
}