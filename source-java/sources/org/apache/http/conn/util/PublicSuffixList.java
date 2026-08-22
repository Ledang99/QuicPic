package org.apache.http.conn.util;

import java.util.Collections;
import java.util.List;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;

@Immutable
/* loaded from: classes.dex */
public final class PublicSuffixList {
    private final List<String> exceptions;
    private final List<String> rules;
    private final DomainType type;

    public PublicSuffixList(List<String> list, List<String> list2) {
        this(DomainType.UNKNOWN, list, list2);
    }

    public PublicSuffixList(DomainType domainType, List<String> list, List<String> list2) {
        this.type = (DomainType) Args.notNull(domainType, "Domain type");
        this.rules = Collections.unmodifiableList((List) Args.notNull(list, "Domain suffix rules"));
        this.exceptions = Collections.unmodifiableList(list2 != null ? list2 : Collections.emptyList());
    }

    public List<String> getExceptions() {
        return this.exceptions;
    }

    public List<String> getRules() {
        return this.rules;
    }

    public DomainType getType() {
        return this.type;
    }
}
