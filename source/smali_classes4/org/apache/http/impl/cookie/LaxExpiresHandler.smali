.class public Lorg/apache/http/impl/cookie/LaxExpiresHandler;
.super Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandler;
.source "LaxExpiresHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final DELIMS:Ljava/util/BitSet;

.field private static final MONTHS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field static final UTC:Ljava/util/TimeZone;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->UTC:Ljava/util/TimeZone;

    .line 57
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 58
    .local v0, "bitSet":Ljava/util/BitSet;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 59
    const/16 v2, 0x20

    .local v2, "b":I
    :goto_0
    const/16 v3, 0x2f

    if-gt v2, v3, :cond_0

    .line 60
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "b":I
    :cond_0
    const/16 v2, 0x3b

    .restart local v2    # "b":I
    :goto_1
    const/16 v3, 0x40

    if-gt v2, v3, :cond_1

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v2    # "b":I
    :cond_1
    const/16 v2, 0x5b

    .restart local v2    # "b":I
    :goto_2
    const/16 v3, 0x60

    if-gt v2, v3, :cond_2

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 68
    .end local v2    # "b":I
    :cond_2
    const/16 v2, 0x7b

    .restart local v2    # "b":I
    :goto_3
    const/16 v3, 0x7e

    if-gt v2, v3, :cond_3

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 71
    .end local v2    # "b":I
    :cond_3
    sput-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    .line 75
    .end local v0    # "bitSet":Ljava/util/BitSet;
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 76
    .local v0, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "jan"

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "feb"

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mar"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "apr"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "may"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "jun"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "jul"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "aug"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sep"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "oct"

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "nov"

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "dec"

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sput-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->MONTHS:Ljava/util/Map;

    .line 91
    .end local v0    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "^([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "^([0-9]{1,2})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)(.*)?$"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "^([0-9]{2,4})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 102
    return-void
.end method

.method private copyContent(Ljava/lang/CharSequence;Lorg/apache/http/message/ParserCursor;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "buf"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "dst"    # Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    .line 201
    .local v0, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    .line 202
    .local v1, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 203
    .local v2, "indexTo":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 204
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 205
    .local v4, "current":C
    sget-object v5, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    goto :goto_1

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 209
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .end local v4    # "current":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 213
    return-void
.end method

.method private skipDelims(Ljava/lang/CharSequence;Lorg/apache/http/message/ParserCursor;)V
    .locals 6
    .param p1, "buf"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .line 185
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    .line 186
    .local v0, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    .line 187
    .local v1, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 188
    .local v2, "indexTo":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 189
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 190
    .local v4, "current":C
    sget-object v5, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    nop

    .end local v4    # "current":C
    add-int/lit8 v0, v0, 0x1

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 197
    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 217
    const-string v0, "expires"

    return-object v0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 21
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 106
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "Invalid \'expires\' attribute: "

    const-string v0, "Cookie"

    invoke-static {v2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v0, v6, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    move-object v5, v0

    .line 108
    .local v5, "cursor":Lorg/apache/http/message/ParserCursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 110
    .local v7, "content":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "second":I
    const/4 v8, 0x0

    .local v8, "minute":I
    const/4 v9, 0x0

    .local v9, "hour":I
    const/4 v10, 0x0

    .local v10, "day":I
    const/4 v11, 0x0

    .local v11, "month":I
    const/4 v12, 0x0

    .line 111
    .local v12, "year":I
    const/4 v13, 0x0

    .local v13, "foundTime":Z
    const/4 v14, 0x0

    .local v14, "foundDayOfMonth":Z
    const/4 v15, 0x0

    .local v15, "foundMonth":Z
    const/16 v16, 0x0

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v0

    .line 113
    .end local v0    # "second":I
    .local v8, "second":I
    .local v9, "minute":I
    .local v10, "hour":I
    .local v11, "day":I
    .local v12, "month":I
    .local v14, "year":I
    .local v15, "foundDayOfMonth":Z
    .local v16, "foundMonth":Z
    .local v17, "foundYear":Z
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    if-nez v0, :cond_6

    .line 114
    :try_start_1
    invoke-direct {v1, v3, v5}, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->skipDelims(Ljava/lang/CharSequence;Lorg/apache/http/message/ParserCursor;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 116
    invoke-direct {v1, v3, v5, v7}, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->copyContent(Ljava/lang/CharSequence;Lorg/apache/http/message/ParserCursor;Ljava/lang/StringBuilder;)V

    .line 118
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-nez v18, :cond_0

    .line 119
    goto/16 :goto_1

    .line 121
    :cond_0
    if-nez v13, :cond_1

    .line 122
    sget-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 124
    const/4 v13, 0x1

    .line 125
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v10, v6

    .line 126
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v9, v6

    .line 127
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v8, v6

    .line 128
    const/4 v6, 0x0

    goto :goto_0

    .line 131
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    if-nez v15, :cond_2

    .line 132
    sget-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 133
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 134
    const/4 v15, 0x1

    .line 135
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v11, v6

    .line 136
    const/4 v6, 0x0

    goto :goto_0

    .line 139
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    if-nez v16, :cond_4

    .line 140
    sget-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 141
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 142
    const/16 v16, 0x1

    .line 143
    sget-object v6, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->MONTHS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v0

    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .local v19, "matcher":Ljava/util/regex/Matcher;
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v12, v0

    .line 144
    const/4 v6, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 141
    .end local v19    # "matcher":Ljava/util/regex/Matcher;
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    move-object/from16 v19, v0

    .line 147
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_4
    if-nez v17, :cond_5

    .line 148
    sget-object v0, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 149
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    const/16 v17, 0x1

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v14, v1

    .line 152
    const/4 v6, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 113
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v0

    move-object v1, v5

    goto/16 :goto_2

    .line 158
    :cond_6
    :goto_1
    nop

    .line 159
    if-eqz v13, :cond_a

    if-eqz v15, :cond_a

    if-eqz v16, :cond_a

    if-eqz v17, :cond_a

    .line 162
    const/16 v0, 0x46

    if-lt v14, v0, :cond_7

    const/16 v0, 0x63

    if-gt v14, v0, :cond_7

    .line 163
    add-int/lit16 v14, v14, 0x76c

    .line 165
    :cond_7
    if-ltz v14, :cond_8

    const/16 v0, 0x45

    if-gt v14, v0, :cond_8

    .line 166
    add-int/lit16 v14, v14, 0x7d0

    .line 168
    :cond_8
    const/4 v0, 0x1

    if-lt v11, v0, :cond_9

    const/16 v0, 0x1f

    if-gt v11, v0, :cond_9

    const/16 v0, 0x641

    if-lt v14, v0, :cond_9

    const/16 v0, 0x17

    if-gt v10, v0, :cond_9

    const/16 v0, 0x3b

    if-gt v9, v0, :cond_9

    if-gt v8, v0, :cond_9

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 173
    .local v0, "c":Ljava/util/Calendar;
    sget-object v1, Lorg/apache/http/impl/cookie/LaxExpiresHandler;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 174
    move-object v1, v5

    .end local v5    # "cursor":Lorg/apache/http/message/ParserCursor;
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 175
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 176
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v10}, Ljava/util/Calendar;->set(II)V

    .line 178
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 179
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 180
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v14}, Ljava/util/Calendar;->set(II)V

    .line 181
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/http/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 182
    return-void

    .line 168
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    .restart local v5    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_9
    move-object v1, v5

    .line 169
    .end local v5    # "cursor":Lorg/apache/http/message/ParserCursor;
    .restart local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    .restart local v5    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_a
    move-object v1, v5

    .line 160
    .end local v5    # "cursor":Lorg/apache/http/message/ParserCursor;
    .restart local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    .restart local v5    # "cursor":Lorg/apache/http/message/ParserCursor;
    :catch_1
    move-exception v0

    move-object v1, v5

    .line 157
    .end local v5    # "cursor":Lorg/apache/http/message/ParserCursor;
    .local v0, "ignore":Ljava/lang/NumberFormatException;
    .restart local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    :goto_2
    new-instance v5, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v5

    :goto_4
    goto :goto_3
.end method
