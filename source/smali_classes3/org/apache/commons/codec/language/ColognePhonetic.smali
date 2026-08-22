.class public Lorg/apache/commons/codec/language/ColognePhonetic;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;,
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;,
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
    }
.end annotation


# static fields
.field private static final AEIJOUY:[C

.field private static final AHKLOQRUX:[C

.field private static final AHOUKQX:[C

.field private static final CKQ:[C

.field private static final GKQ:[C

.field private static final PREPROCESS_MAP:[[C

.field private static final SCZ:[C

.field private static final SZ:[C

.field private static final TDX:[C

.field private static final WFPV:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 183
    const/4 v0, 0x7

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/codec/language/ColognePhonetic;->AEIJOUY:[C

    .line 184
    const/4 v1, 0x3

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    sput-object v2, Lorg/apache/commons/codec/language/ColognePhonetic;->SCZ:[C

    .line 185
    const/4 v2, 0x4

    new-array v3, v2, [C

    fill-array-data v3, :array_2

    sput-object v3, Lorg/apache/commons/codec/language/ColognePhonetic;->WFPV:[C

    .line 186
    new-array v3, v1, [C

    fill-array-data v3, :array_3

    sput-object v3, Lorg/apache/commons/codec/language/ColognePhonetic;->GKQ:[C

    .line 187
    new-array v3, v1, [C

    fill-array-data v3, :array_4

    sput-object v3, Lorg/apache/commons/codec/language/ColognePhonetic;->CKQ:[C

    .line 188
    const/16 v3, 0x9

    new-array v3, v3, [C

    fill-array-data v3, :array_5

    sput-object v3, Lorg/apache/commons/codec/language/ColognePhonetic;->AHKLOQRUX:[C

    .line 189
    const/4 v3, 0x2

    new-array v4, v3, [C

    fill-array-data v4, :array_6

    sput-object v4, Lorg/apache/commons/codec/language/ColognePhonetic;->SZ:[C

    .line 190
    new-array v0, v0, [C

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->AHOUKQX:[C

    .line 191
    new-array v0, v1, [C

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->TDX:[C

    .line 287
    new-array v0, v2, [[C

    new-array v2, v3, [C

    fill-array-data v2, :array_9

    const/4 v4, 0x0

    aput-object v2, v0, v4

    new-array v2, v3, [C

    fill-array-data v2, :array_a

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v3, [C

    fill-array-data v2, :array_b

    aput-object v2, v0, v3

    new-array v2, v3, [C

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x45s
        0x49s
        0x4as
        0x4fs
        0x55s
        0x59s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x53s
        0x43s
        0x5as
    .end array-data

    nop

    :array_2
    .array-data 2
        0x57s
        0x46s
        0x50s
        0x56s
    .end array-data

    :array_3
    .array-data 2
        0x47s
        0x4bs
        0x51s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x43s
        0x4bs
        0x51s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x41s
        0x48s
        0x4bs
        0x4cs
        0x4fs
        0x51s
        0x52s
        0x55s
        0x58s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x53s
        0x5as
    .end array-data

    :array_7
    .array-data 2
        0x41s
        0x48s
        0x4fs
        0x55s
        0x4bs
        0x51s
        0x58s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x54s
        0x44s
        0x58s
    .end array-data

    nop

    :array_9
    .array-data 2
        0xc4s
        0x41s
    .end array-data

    :array_a
    .array-data 2
        0xdcs
        0x55s
    .end array-data

    :array_b
    .array-data 2
        0xd6s
        0x4fs
    .end array-data

    :array_c
    .array-data 2
        0xdfs
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method private static arrayContains([CC)Z
    .locals 5
    .param p0, "arr"    # [C
    .param p1, "key"    # C

    .line 298
    move-object v0, p0

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, v0, v2

    .line 299
    .local v3, "element":C
    if-ne v3, p1, :cond_0

    .line 300
    const/4 v4, 0x1

    return v4

    .line 298
    .end local v3    # "element":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private preprocess(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .line 427
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 431
    .local v0, "chrs":[C
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 432
    aget-char v2, v0, v1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    .line 433
    sget-object v2, Lorg/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    .local v2, "arr$":[[C
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 434
    .local v5, "element":[C
    aget-char v6, v0, v1

    const/4 v7, 0x0

    aget-char v7, v5, v7

    if-ne v6, v7, :cond_0

    .line 435
    const/4 v6, 0x1

    aget-char v6, v5, v6

    aput-char v6, v0, v1

    .line 436
    goto :goto_2

    .line 433
    .end local v5    # "element":[C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 431
    .end local v2    # "arr$":[[C
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v1    # "index":I
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public colognePhonetic(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "text"    # Ljava/lang/String;

    .line 318
    if-nez p1, :cond_0

    .line 319
    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->preprocess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    new-instance v0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;I)V

    .line 325
    .local v0, "output":Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;
    new-instance v1, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;[C)V

    .line 329
    .local v1, "input":Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;
    const/16 v2, 0x2d

    .line 330
    .local v2, "lastChar":C
    const/16 v3, 0x2f

    .line 334
    .local v3, "lastCode":C
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v4

    .line 336
    .local v4, "rightLength":I
    :goto_0
    if-lez v4, :cond_1c

    .line 337
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->removeNext()C

    move-result v5

    .line 339
    .local v5, "chr":C
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v6

    move v4, v6

    if-lez v6, :cond_1

    .line 340
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v6

    .local v6, "nextChar":C
    goto :goto_1

    .line 342
    .end local v6    # "nextChar":C
    :cond_1
    const/16 v6, 0x2d

    .line 345
    .restart local v6    # "nextChar":C
    :goto_1
    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->AEIJOUY:[C

    invoke-static {v7, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    const/16 v8, 0x2f

    if-eqz v7, :cond_2

    .line 346
    const/16 v7, 0x30

    .local v7, "code":C
    goto/16 :goto_7

    .line 347
    .end local v7    # "code":C
    :cond_2
    const/16 v7, 0x48

    if-eq v5, v7, :cond_17

    const/16 v9, 0x41

    if-lt v5, v9, :cond_17

    const/16 v9, 0x5a

    if-le v5, v9, :cond_3

    goto/16 :goto_6

    .line 352
    :cond_3
    const/16 v10, 0x42

    if-eq v5, v10, :cond_16

    const/16 v10, 0x50

    if-ne v5, v10, :cond_4

    if-eq v6, v7, :cond_4

    goto/16 :goto_5

    .line 354
    :cond_4
    const/16 v7, 0x44

    if-eq v5, v7, :cond_5

    const/16 v7, 0x54

    if-ne v5, v7, :cond_6

    :cond_5
    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->SCZ:[C

    invoke-static {v7, v6}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-nez v7, :cond_6

    .line 355
    const/16 v7, 0x32

    .restart local v7    # "code":C
    goto/16 :goto_7

    .line 356
    .end local v7    # "code":C
    :cond_6
    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->WFPV:[C

    invoke-static {v7, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 357
    const/16 v7, 0x33

    .restart local v7    # "code":C
    goto/16 :goto_7

    .line 358
    .end local v7    # "code":C
    :cond_7
    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->GKQ:[C

    invoke-static {v7, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 359
    const/16 v7, 0x34

    .restart local v7    # "code":C
    goto/16 :goto_7

    .line 360
    .end local v7    # "code":C
    :cond_8
    const/16 v7, 0x58

    const/16 v10, 0x53

    if-ne v5, v7, :cond_9

    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->CKQ:[C

    invoke-static {v7, v2}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-nez v7, :cond_9

    .line 361
    const/16 v7, 0x34

    .line 362
    .restart local v7    # "code":C
    invoke-virtual {v1, v10}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->addLeft(C)V

    .line 363
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 364
    .end local v7    # "code":C
    :cond_9
    if-eq v5, v10, :cond_15

    if-ne v5, v9, :cond_a

    goto :goto_4

    .line 366
    :cond_a
    const/16 v7, 0x43

    if-ne v5, v7, :cond_f

    .line 367
    if-ne v3, v8, :cond_c

    .line 368
    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->AHKLOQRUX:[C

    invoke-static {v7, v6}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 369
    const/16 v7, 0x34

    .restart local v7    # "code":C
    goto :goto_7

    .line 371
    .end local v7    # "code":C
    :cond_b
    const/16 v7, 0x38

    .restart local v7    # "code":C
    goto :goto_7

    .line 374
    .end local v7    # "code":C
    :cond_c
    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->SZ:[C

    invoke-static {v7, v2}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-nez v7, :cond_e

    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->AHOUKQX:[C

    invoke-static {v7, v6}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_2

    .line 377
    :cond_d
    const/16 v7, 0x34

    .restart local v7    # "code":C
    goto :goto_7

    .line 375
    .end local v7    # "code":C
    :cond_e
    :goto_2
    const/16 v7, 0x38

    .restart local v7    # "code":C
    goto :goto_7

    .line 380
    .end local v7    # "code":C
    :cond_f
    sget-object v7, Lorg/apache/commons/codec/language/ColognePhonetic;->TDX:[C

    invoke-static {v7, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 381
    const/16 v7, 0x38

    .restart local v7    # "code":C
    goto :goto_7

    .line 382
    .end local v7    # "code":C
    :cond_10
    const/16 v7, 0x52

    if-ne v5, v7, :cond_11

    .line 383
    const/16 v7, 0x37

    .restart local v7    # "code":C
    goto :goto_7

    .line 384
    .end local v7    # "code":C
    :cond_11
    const/16 v7, 0x4c

    if-ne v5, v7, :cond_12

    .line 385
    const/16 v7, 0x35

    .restart local v7    # "code":C
    goto :goto_7

    .line 386
    .end local v7    # "code":C
    :cond_12
    const/16 v7, 0x4d

    if-eq v5, v7, :cond_14

    const/16 v7, 0x4e

    if-ne v5, v7, :cond_13

    goto :goto_3

    .line 389
    :cond_13
    move v7, v5

    .restart local v7    # "code":C
    goto :goto_7

    .line 387
    .end local v7    # "code":C
    :cond_14
    :goto_3
    const/16 v7, 0x36

    .restart local v7    # "code":C
    goto :goto_7

    .line 365
    .end local v7    # "code":C
    :cond_15
    :goto_4
    const/16 v7, 0x38

    .restart local v7    # "code":C
    goto :goto_7

    .line 353
    .end local v7    # "code":C
    :cond_16
    :goto_5
    const/16 v7, 0x31

    .restart local v7    # "code":C
    goto :goto_7

    .line 348
    .end local v7    # "code":C
    :cond_17
    :goto_6
    if-ne v3, v8, :cond_18

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_18
    const/16 v7, 0x2d

    .line 392
    .restart local v7    # "code":C
    :goto_7
    const/16 v9, 0x2d

    if-eq v7, v9, :cond_1b

    const/16 v9, 0x30

    if-eq v3, v7, :cond_19

    if-ne v7, v9, :cond_1a

    if-eq v3, v8, :cond_1a

    :cond_19
    if-lt v7, v9, :cond_1a

    const/16 v8, 0x38

    if-le v7, v8, :cond_1b

    .line 393
    :cond_1a
    invoke-virtual {v0, v7}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->addRight(C)V

    .line 396
    :cond_1b
    move v2, v5

    .line 397
    move v3, v7

    goto/16 :goto_0

    .line 399
    .end local v5    # "chr":C
    .end local v6    # "nextChar":C
    .end local v7    # "code":C
    :cond_1c
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 404
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 411
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method\'s parameter was expected to be of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". But actually it was of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 416
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .line 420
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
