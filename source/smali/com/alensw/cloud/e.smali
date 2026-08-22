.class public Lcom/alensw/cloud/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/alensw/cloud/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/alensw/cloud/x;

    const/4 v1, 0x0

    new-instance v2, Lcom/alensw/cloud/f;

    invoke-direct {v2}, Lcom/alensw/cloud/f;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/alensw/cloud/p;

    invoke-direct {v2}, Lcom/alensw/cloud/p;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/alensw/cloud/q;

    invoke-direct {v2}, Lcom/alensw/cloud/q;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/alensw/cloud/r;

    invoke-direct {v2}, Lcom/alensw/cloud/r;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/alensw/cloud/s;

    invoke-direct {v2}, Lcom/alensw/cloud/s;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/alensw/cloud/t;

    invoke-direct {v2}, Lcom/alensw/cloud/t;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/alensw/cloud/u;

    invoke-direct {v2}, Lcom/alensw/cloud/u;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/alensw/cloud/v;

    invoke-direct {v2}, Lcom/alensw/cloud/v;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/alensw/cloud/w;

    invoke-direct {v2}, Lcom/alensw/cloud/w;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/alensw/cloud/g;

    invoke-direct {v2}, Lcom/alensw/cloud/g;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/alensw/cloud/h;

    invoke-direct {v2}, Lcom/alensw/cloud/h;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/alensw/cloud/i;

    invoke-direct {v2}, Lcom/alensw/cloud/i;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/alensw/cloud/j;

    invoke-direct {v2}, Lcom/alensw/cloud/j;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/alensw/cloud/k;

    invoke-direct {v2}, Lcom/alensw/cloud/k;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/alensw/cloud/l;

    invoke-direct {v2}, Lcom/alensw/cloud/l;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/cloud/e;->a:[Lcom/alensw/cloud/x;

    return-void
.end method

.method public static a(Landroid/content/Context;[I)Landroid/widget/BaseAdapter;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v1, 0x1010036

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v7

    const v1, 0x1010038

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v6

    const v1, 0x7f080006

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x2

    const v1, 0x7f080005

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v9, v1, v4

    new-instance v2, Ljava/util/ArrayList;

    sget-object v1, Lcom/alensw/cloud/e;->a:[Lcom/alensw/cloud/x;

    array-length v1, v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, -0x1

    invoke-static {v8}, Lcom/alensw/cloud/e;->a(Landroid/content/res/Resources;)[Lcom/alensw/cloud/x;

    move-result-object v10

    array-length v11, v10

    const/4 v1, 0x0

    move v15, v1

    move v1, v3

    move v3, v15

    :goto_0
    if-ge v3, v11, :cond_3

    aget-object v12, v10, v3

    if-eqz p1, :cond_0

    iget v13, v12, Lcom/alensw/cloud/x;->d:I

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/alensw/cloud/e;->a([II)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    iget v13, v12, Lcom/alensw/cloud/x;->d:I

    if-eq v1, v13, :cond_1

    iget v1, v12, Lcom/alensw/cloud/x;->d:I

    new-instance v13, Lcom/alensw/cloud/x;

    invoke-direct {v13}, Lcom/alensw/cloud/x;-><init>()V

    iget v14, v12, Lcom/alensw/cloud/x;->d:I

    packed-switch v14, :pswitch_data_0

    :goto_1
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    const v14, 0x7f0a0099

    iput v14, v13, Lcom/alensw/cloud/x;->c:I

    goto :goto_1

    :pswitch_1
    const v14, 0x7f0a009a

    iput v14, v13, Lcom/alensw/cloud/x;->c:I

    goto :goto_1

    :pswitch_2
    const v14, 0x7f0a009b

    iput v14, v13, Lcom/alensw/cloud/x;->c:I

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/alensw/cloud/n;

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v9}, Lcom/alensw/cloud/n;-><init>(Ljava/util/ArrayList;Landroid/content/Context;IIIILandroid/content/res/Resources;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/x;
    .locals 6

    const-class v2, Lcom/alensw/cloud/e;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/alensw/cloud/e;->a:[Lcom/alensw/cloud/x;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget-object v5, v0, Lcom/alensw/cloud/x;->a:Lcom/alensw/cloud/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p0, :cond_0

    :goto_1
    monitor-exit v2

    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Landroid/content/Context;[ILcom/alensw/cloud/y;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/alensw/cloud/e;->a(Landroid/content/Context;[I)Landroid/widget/BaseAdapter;

    move-result-object v0

    const v1, 0x7f0a0006

    new-instance v2, Lcom/alensw/cloud/o;

    invoke-direct {v2, p2, v0}, Lcom/alensw/cloud/o;-><init>(Lcom/alensw/cloud/y;Landroid/widget/BaseAdapter;)V

    invoke-static {p0, v1, v0, v2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    return-void
.end method

.method public static a([II)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/res/Resources;)[Lcom/alensw/cloud/x;
    .locals 3

    const-class v1, Lcom/alensw/cloud/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/cloud/e;->a:[Lcom/alensw/cloud/x;

    new-instance v2, Lcom/alensw/cloud/m;

    invoke-direct {v2, p0}, Lcom/alensw/cloud/m;-><init>(Landroid/content/res/Resources;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v0, Lcom/alensw/cloud/e;->a:[Lcom/alensw/cloud/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
