package com.alensw.updater;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import com.alensw.PicFolder.R;
import com.alensw.updater.downloader.DownloaderManager;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* loaded from: classes.dex */
class UpdaterEngine extends AsyncTask<String, Void, JSONObject> {

    /* renamed from: c */
    WeakReference<Context> f4878c;
    boolean showToast;
    String update_channel;

    public UpdaterEngine(Context context, String str, boolean z) {
        this.f4878c = new WeakReference<>(context);
        this.update_channel = str;
        this.showToast = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public JSONObject doInBackground(String... strArr) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strArr[0]).openConnection();
            InputStream inputStream = httpURLConnection.getInputStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    String sb2 = sb.toString();
                    httpURLConnection.disconnect();
                    inputStream.close();
                    sb.delete(0, sb.length());
                    return (JSONObject) new JSONObject(sb2).get(this.update_channel);
                }
                sb.append(readLine);
            }
        } catch (Exception e) {
            Log.w("UpdaterEngine", e);
            return null;
        }
    }

    public void noUpdatesToast() {
        if (this.showToast) {
            Toast.makeText(this.f4878c.get(), R.string.update_not_found, 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(JSONObject jSONObject) {
        super.onPostExecute((UpdaterEngine) jSONObject);
        try {
            if (jSONObject == null) {
                noUpdatesToast();
                return;
            }
            int i = jSONObject.getInt("current_version");
            final String string = jSONObject.getString("download_url");
            String string2 = jSONObject.getString("changelog");
            int i2 = -1;
            try {
                i2 = this.f4878c.get().getPackageManager().getPackageInfo(this.f4878c.get().getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
            if (i > i2) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.f4878c.get());
                builder.setTitle(R.string.update_avaliable);
                builder.setMessage(string2);
                builder.setCancelable(true);
                builder.setPositiveButton(R.string.update_download, new DialogInterface.OnClickListener() { // from class: com.alensw.updater.UpdaterEngine.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        new DownloaderManager(UpdaterEngine.this.f4878c.get(), string).startDownload();
                    }
                });
                builder.setNegativeButton(R.string.update_close, new DialogInterface.OnClickListener() { // from class: com.alensw.updater.UpdaterEngine.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        dialogInterface.cancel();
                    }
                });
                builder.create().show();
            } else {
                noUpdatesToast();
            }
        } catch (Exception e2) {
            Log.w("UpdaterEngine", e2);
            noUpdatesToast();
        }
    }
}
