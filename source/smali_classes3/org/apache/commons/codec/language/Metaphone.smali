.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 80
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    .line 370
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextChar(Ljava/lang/StringBuilder;IC)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "matches":Z
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 354
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 356
    :cond_1
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuilder;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "matches":Z
    if-lez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 345
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 347
    :cond_1
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuilder;I)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const-string v1, "AEIOU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 363
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 366
    .end local v1    # "substring":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 388
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 391
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 402
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .line 421
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 414
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "txt"    # Ljava/lang/String;

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 94
    .local v2, "hard":Z
    if-eqz v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 98
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 99
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 102
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 104
    .local v3, "inwd":[C
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v5, "local":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v6, "code":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    aget-char v8, v3, v7

    const/16 v9, 0x41

    const/16 v10, 0x47

    const/16 v11, 0x58

    const/16 v12, 0x48

    const/16 v13, 0x53

    const/16 v14, 0x4b

    if-eq v8, v9, :cond_8

    if-eq v8, v10, :cond_6

    if-eq v8, v14, :cond_6

    const/16 v9, 0x50

    if-eq v8, v9, :cond_6

    const/16 v9, 0x57

    if-eq v8, v9, :cond_3

    if-eq v8, v11, :cond_2

    .line 141
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :cond_2
    aput-char v13, v3, v7

    .line 138
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 139
    goto :goto_0

    .line 125
    :cond_3
    aget-char v8, v3, v4

    const/16 v15, 0x52

    if-ne v8, v15, :cond_4

    .line 126
    array-length v7, v3

    sub-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 127
    goto :goto_0

    .line 129
    :cond_4
    aget-char v8, v3, v4

    if-ne v8, v12, :cond_5

    .line 130
    array-length v8, v3

    sub-int/2addr v8, v4

    invoke-virtual {v5, v3, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v5, v7, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 135
    goto :goto_0

    .line 111
    :cond_6
    aget-char v7, v3, v4

    const/16 v8, 0x4e

    if-ne v7, v8, :cond_7

    .line 112
    array-length v7, v3

    sub-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 116
    goto :goto_0

    .line 118
    :cond_8
    aget-char v7, v3, v4

    const/16 v8, 0x45

    if-ne v7, v8, :cond_9

    .line 119
    array-length v7, v3

    sub-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_9
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 123
    nop

    .line 144
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 145
    .local v7, "wdsz":I
    const/4 v8, 0x0

    .line 147
    .local v8, "n":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v15

    if-ge v9, v15, :cond_24

    if-ge v8, v7, :cond_24

    .line 149
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 151
    .local v9, "symb":C
    const/16 v15, 0x43

    if-eq v9, v15, :cond_a

    invoke-direct {v0, v5, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 154
    :cond_a
    const/16 v4, 0x54

    const/16 v10, 0x46

    const-string v15, "EIY"

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_5

    .line 322
    :pswitch_0
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    goto/16 :goto_5

    .line 318
    :pswitch_1
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    goto/16 :goto_5

    .line 312
    :pswitch_2
    invoke-direct {v0, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_22

    add-int/lit8 v4, v8, 0x1

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 314
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 309
    :pswitch_3
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 292
    :pswitch_4
    const-string v10, "TIA"

    invoke-direct {v0, v5, v8, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "TIO"

    invoke-direct {v0, v5, v8, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_2

    .line 297
    :cond_b
    const-string v10, "TCH"

    invoke-direct {v0, v5, v8, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 299
    goto/16 :goto_5

    .line 302
    :cond_c
    const-string v10, "TH"

    invoke-direct {v0, v5, v8, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 303
    const/16 v4, 0x30

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 305
    :cond_d
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    goto/16 :goto_5

    .line 294
    :cond_e
    :goto_2
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    goto/16 :goto_5

    .line 283
    :pswitch_5
    const-string v4, "SH"

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "SIO"

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "SIA"

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_3

    .line 288
    :cond_f
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    goto/16 :goto_5

    .line 286
    :cond_10
    :goto_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 280
    :pswitch_6
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    goto/16 :goto_5

    .line 272
    :pswitch_7
    invoke-direct {v0, v5, v8, v12}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 274
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 276
    :cond_11
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    goto/16 :goto_5

    .line 263
    :pswitch_8
    if-lez v8, :cond_12

    .line 264
    const/16 v4, 0x43

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-nez v4, :cond_22

    .line 265
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 268
    :cond_12
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    goto/16 :goto_5

    .line 243
    :pswitch_9
    invoke-direct {v0, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 244
    goto/16 :goto_5

    .line 246
    :cond_13
    if-lez v8, :cond_14

    add-int/lit8 v4, v8, -0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const-string v10, "CSPTG"

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_14

    .line 248
    goto/16 :goto_5

    .line 250
    :cond_14
    add-int/lit8 v4, v8, 0x1

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 251
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 214
    :pswitch_a
    add-int/lit8 v4, v8, 0x1

    invoke-direct {v0, v7, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-direct {v0, v5, v8, v12}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 216
    goto/16 :goto_5

    .line 218
    :cond_15
    add-int/lit8 v4, v8, 0x1

    invoke-direct {v0, v7, v4}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-direct {v0, v5, v8, v12}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-eqz v4, :cond_16

    add-int/lit8 v4, v8, 0x2

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 221
    goto/16 :goto_5

    .line 223
    :cond_16
    if-lez v8, :cond_17

    const-string v4, "GN"

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "GNED"

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 226
    goto/16 :goto_5

    .line 228
    :cond_17
    const/16 v4, 0x47

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 230
    const/4 v2, 0x1

    goto :goto_4

    .line 232
    :cond_18
    const/4 v2, 0x0

    .line 234
    :goto_4
    invoke-direct {v0, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_19

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_19

    if-nez v2, :cond_19

    .line 237
    const/16 v4, 0x4a

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 239
    :cond_19
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    goto/16 :goto_5

    .line 260
    :pswitch_b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    goto/16 :goto_5

    .line 205
    :pswitch_c
    add-int/lit8 v10, v8, 0x1

    invoke-direct {v0, v7, v10}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v10

    if-nez v10, :cond_1a

    const/16 v10, 0x47

    invoke-direct {v0, v5, v8, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v17

    if-eqz v17, :cond_1a

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_1a

    .line 208
    const/16 v4, 0x4a

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_5

    .line 210
    :cond_1a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    goto/16 :goto_5

    .line 173
    :pswitch_d
    invoke-direct {v0, v5, v8, v13}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-direct {v0, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_1b

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1b

    .line 176
    goto/16 :goto_5

    .line 178
    :cond_1b
    const-string v4, "CIA"

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 179
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    goto :goto_5

    .line 182
    :cond_1c
    invoke-direct {v0, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_1d

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1d

    .line 184
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    goto :goto_5

    .line 187
    :cond_1d
    invoke-direct {v0, v5, v8, v13}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-direct {v0, v5, v8, v12}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 189
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    goto :goto_5

    .line 192
    :cond_1e
    invoke-direct {v0, v5, v8, v12}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 193
    if-nez v8, :cond_1f

    const/4 v4, 0x3

    if-lt v7, v4, :cond_1f

    const/4 v4, 0x2

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 196
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 198
    :cond_1f
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 201
    :cond_20
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    goto :goto_5

    .line 165
    :pswitch_e
    const/16 v4, 0x4d

    invoke-direct {v0, v5, v8, v4}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-direct {v0, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 167
    goto :goto_5

    .line 169
    :cond_21
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    goto :goto_5

    .line 160
    :pswitch_f
    if-nez v8, :cond_22

    .line 161
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :cond_22
    :goto_5
    const/4 v4, 0x1

    add-int/2addr v8, v4

    .line 330
    :goto_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v15

    if-le v10, v15, :cond_23

    .line 331
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 333
    .end local v9    # "symb":C
    :cond_23
    const/16 v10, 0x47

    goto/16 :goto_1

    .line 334
    :cond_24
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 95
    .end local v3    # "inwd":[C
    .end local v5    # "local":Ljava/lang/StringBuilder;
    .end local v6    # "code":Ljava/lang/StringBuilder;
    .end local v7    # "wdsz":I
    .end local v8    # "n":I
    :cond_25
    :goto_7
    const-string v3, ""

    return-object v3

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .line 427
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
