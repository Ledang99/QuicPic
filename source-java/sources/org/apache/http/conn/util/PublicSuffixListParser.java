package org.apache.http.conn.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes.dex */
public final class PublicSuffixListParser {
    public PublicSuffixList parse(Reader reader) throws IOException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(reader);
        while (true) {
            String readLine = bufferedReader.readLine();
            String str = readLine;
            if (readLine == null) {
                return new PublicSuffixList(DomainType.UNKNOWN, arrayList, arrayList2);
            }
            if (!str.isEmpty() && !str.startsWith("//")) {
                if (str.startsWith(".")) {
                    str = str.substring(1);
                }
                boolean startsWith = str.startsWith("!");
                if (startsWith) {
                    str = str.substring(1);
                }
                if (startsWith) {
                    arrayList2.add(str);
                } else {
                    arrayList.add(str);
                }
            }
        }
    }

    public List<PublicSuffixList> parseByType(Reader reader) throws IOException {
        ArrayList arrayList = new ArrayList(2);
        BufferedReader bufferedReader = new BufferedReader(reader);
        new StringBuilder(256);
        DomainType domainType = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        while (true) {
            String readLine = bufferedReader.readLine();
            String str = readLine;
            if (readLine == null) {
                return arrayList;
            }
            if (!str.isEmpty()) {
                if (str.startsWith("//")) {
                    if (domainType == null) {
                        if (str.contains("===BEGIN ICANN DOMAINS===")) {
                            domainType = DomainType.ICANN;
                        } else if (str.contains("===BEGIN PRIVATE DOMAINS===")) {
                            domainType = DomainType.PRIVATE;
                        }
                    } else if (str.contains("===END ICANN DOMAINS===") || str.contains("===END PRIVATE DOMAINS===")) {
                        if (arrayList2 != null) {
                            arrayList.add(new PublicSuffixList(domainType, arrayList2, arrayList3));
                        }
                        domainType = null;
                        arrayList2 = null;
                        arrayList3 = null;
                    }
                } else if (domainType != null) {
                    if (str.startsWith(".")) {
                        str = str.substring(1);
                    }
                    boolean startsWith = str.startsWith("!");
                    if (startsWith) {
                        str = str.substring(1);
                    }
                    if (startsWith) {
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                        }
                        arrayList3.add(str);
                    } else {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(str);
                    }
                }
            }
        }
    }
}
