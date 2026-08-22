package com.alensw.updater.downloader;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.PowerManager;
import android.widget.Toast;
import com.alensw.PicFolder.R;
import com.alensw.updater.installer.ApkInstaller;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public class DownloadTask extends AsyncTask<String, Integer, String> {
    private String filepath;
    private final ProgressDialog mPDialog;
    private PowerManager.WakeLock mWakeLock;
    private final WeakReference<Context> weakContext;

    public DownloadTask(Context context) {
        this.weakContext = new WeakReference<>(context);
        this.mPDialog = new ProgressDialog(context);
        this.mPDialog.setMessage(this.weakContext.get().getResources().getString(R.string.update_downloading));
        this.mPDialog.setIndeterminate(true);
        this.mPDialog.setProgressStyle(1);
        this.mPDialog.setCancelable(false);
        this.mPDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.alensw.updater.downloader.DownloadTask.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                this.cancel(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x012e A[DONT_GENERATE, FINALLY_INSNS] */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[DONT_GENERATE, FINALLY_INSNS, SYNTHETIC] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String doInBackground(String... strArr) {
        byte[] bArr;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(strArr[0]).openConnection();
                httpURLConnection2.connect();
                if (httpURLConnection2.getResponseCode() != 200) {
                    String str = "Server returned HTTP " + httpURLConnection2.getResponseCode() + " " + httpURLConnection2.getResponseMessage();
                    if (0 != 0) {
                        try {
                            outputStream.close();
                        } catch (IOException e) {
                        }
                    }
                    if (0 != 0) {
                        inputStream.close();
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return str;
                }
                int contentLength = httpURLConnection2.getContentLength();
                int i = 1;
                this.filepath = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + "/" + (strArr[0].endsWith(".apk") ? strArr[0].substring(strArr[0].lastIndexOf("/") + 1) : "quickpic.apk");
                InputStream inputStream2 = httpURLConnection2.getInputStream();
                FileOutputStream fileOutputStream = new FileOutputStream(this.filepath, false);
                byte[] bArr2 = new byte[4096];
                long j = 0;
                while (true) {
                    int read = inputStream2.read(bArr2);
                    if (read == -1) {
                        try {
                            fileOutputStream.close();
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                        } catch (IOException e2) {
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        return null;
                    }
                    if (isCancelled()) {
                        inputStream2.close();
                        try {
                            fileOutputStream.close();
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                        } catch (IOException e3) {
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        return null;
                    }
                    j += read;
                    if (contentLength > 0) {
                        Integer[] numArr = new Integer[i];
                        bArr = bArr2;
                        numArr[0] = Integer.valueOf((int) ((100 * j) / contentLength));
                        publishProgress(numArr);
                    } else {
                        bArr = bArr2;
                    }
                    byte[] bArr3 = bArr;
                    fileOutputStream.write(bArr3, 0, read);
                    bArr2 = bArr3;
                    i = 1;
                }
            } catch (Exception e4) {
                String exc = e4.toString();
                if (0 != 0) {
                    try {
                        outputStream.close();
                    } catch (IOException e5) {
                        if (0 != 0) {
                            httpURLConnection.disconnect();
                        }
                        return exc;
                    }
                }
                if (0 != 0) {
                    inputStream.close();
                }
                if (0 != 0) {
                }
                return exc;
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        this.mWakeLock.release();
        this.mPDialog.dismiss();
        if (str == null) {
            ApkInstaller.installApplication(this.weakContext.get(), this.filepath);
            return;
        }
        Toast.makeText(this.weakContext.get(), R.string.update_download_error + str, 1).show();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        super.onPreExecute();
        this.mWakeLock = ((PowerManager) this.weakContext.get().getSystemService("power")).newWakeLock(1, getClass().getName());
        this.mWakeLock.acquire();
        this.mPDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate((Object[]) numArr);
        this.mPDialog.setIndeterminate(false);
        this.mPDialog.setMax(100);
        this.mPDialog.setProgress(numArr[0].intValue());
    }
}
