package com.alensw.updater;

import android.os.Bundle;
import android.preference.Preference;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.activity.C1122ba;

/* loaded from: classes.dex */
public class UpdateView extends C1122ba {
    @Override // com.alensw.p038ui.activity.C1122ba, android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.update_view);
        addPreferencesFromResource(R.xml.update_settings);
        findPreference("checkForUpdates").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.alensw.updater.UpdateView.1
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                new UpdaterAssistant(UpdateView.this, true).checkForUpdates();
                return true;
            }
        });
    }
}
