.class public Lcom/alensw/b/b/a;
.super Lcom/alensw/b/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/b/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move v12, v2

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v10, v4

    move v11, v5

    :goto_2
    if-ge v11, v12, :cond_e

    if-ge v10, v2, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0x30

    if-lt v5, v3, :cond_4

    const/16 v3, 0x39

    if-gt v5, v3, :cond_4

    const/4 v3, 0x1

    move v4, v3

    :goto_3
    const/16 v3, 0x30

    if-lt v6, v3, :cond_5

    const/16 v3, 0x39

    if-gt v6, v3, :cond_5

    const/4 v3, 0x1

    :goto_4
    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    add-int/lit8 v3, v5, -0x30

    int-to-long v8, v3

    add-int/lit8 v3, v6, -0x30

    int-to-long v6, v3

    add-int/lit8 v5, v11, 0x1

    add-int/lit8 v4, v10, 0x1

    :goto_5
    if-ge v5, v12, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v13, 0x30

    if-lt v3, v13, :cond_0

    const/16 v13, 0x39

    if-le v3, v13, :cond_6

    :cond_0
    :goto_6
    if-ge v4, v2, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v13, 0x30

    if-lt v3, v13, :cond_1

    const/16 v13, 0x39

    if-le v3, v13, :cond_7

    :cond_1
    cmp-long v3, v8, v6

    if-nez v3, :cond_9

    sub-int v3, v5, v11

    sub-int v6, v4, v10

    if-ne v3, v6, :cond_8

    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_d

    move v2, v3

    :goto_8
    return v2

    :cond_2
    const/4 v2, 0x0

    move v12, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v14, 0xa

    mul-long/2addr v8, v14

    add-int/lit8 v3, v3, -0x30

    int-to-long v14, v3

    add-long/2addr v8, v14

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v14, 0xa

    mul-long/2addr v6, v14

    add-int/lit8 v3, v3, -0x30

    int-to-long v14, v3

    add-long/2addr v6, v14

    goto :goto_6

    :cond_8
    sub-int v3, v6, v3

    goto :goto_7

    :cond_9
    cmp-long v3, v8, v6

    if-gez v3, :cond_a

    const/4 v3, -0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    if-ne v5, v6, :cond_c

    const/4 v3, 0x0

    add-int/lit8 v5, v11, 0x1

    add-int/lit8 v4, v10, 0x1

    goto :goto_7

    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4}, Lcom/alensw/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v11, 0x1

    add-int/lit8 v4, v10, 0x1

    goto :goto_7

    :cond_d
    move v10, v4

    move v11, v5

    goto/16 :goto_2

    :cond_e
    sub-int v2, v12, v2

    goto :goto_8
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
