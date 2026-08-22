.class public Lcom/alensw/transfer/ac;
.super Lcom/alensw/transfer/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/alensw/transfer/a/t;

.field private f:Lcom/alensw/transfer/TransferService;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/alensw/ui/view/ImageGridView;

.field private j:Landroid/widget/TextView;

.field private final k:Lcom/alensw/transfer/a/a;

.field private final l:Landroid/os/Handler;

.field private final m:Lcom/alensw/transfer/ax;

.field private final n:Lcom/alensw/transfer/ay;

.field private final o:Ljava/util/ArrayList;

.field private final p:Ljava/util/ArrayList;

.field private q:I

.field private final r:Ljava/util/HashMap;

.field private s:Z

.field private final t:Lcom/alensw/transfer/a/j;

.field private u:Landroid/widget/AdapterView$OnItemClickListener;

.field private v:Z

.field private final w:Ljava/util/Comparator;

.field private final x:Lcom/alensw/transfer/bj;

.field private y:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alensw/transfer/a;-><init>()V

    new-instance v0, Lcom/alensw/transfer/a/a;

    invoke-direct {v0}, Lcom/alensw/transfer/a/a;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->k:Lcom/alensw/transfer/a/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->l:Landroid/os/Handler;

    new-instance v0, Lcom/alensw/transfer/ax;

    invoke-direct {v0, p0, v2}, Lcom/alensw/transfer/ax;-><init>(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/ad;)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->m:Lcom/alensw/transfer/ax;

    new-instance v0, Lcom/alensw/transfer/ay;

    invoke-direct {v0, p0, v2}, Lcom/alensw/transfer/ay;-><init>(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/ad;)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->n:Lcom/alensw/transfer/ay;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/transfer/ac;->q:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->r:Ljava/util/HashMap;

    new-instance v0, Lcom/alensw/transfer/ae;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/ae;-><init>(Lcom/alensw/transfer/ac;)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->t:Lcom/alensw/transfer/a/j;

    new-instance v0, Lcom/alensw/transfer/aj;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/aj;-><init>(Lcom/alensw/transfer/ac;)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->u:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/transfer/ac;->v:Z

    new-instance v0, Lcom/alensw/transfer/al;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/al;-><init>(Lcom/alensw/transfer/ac;)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->w:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/transfer/am;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/am;-><init>(Lcom/alensw/transfer/ac;)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->x:Lcom/alensw/transfer/bj;

    new-instance v0, Lcom/alensw/transfer/an;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/an;-><init>(Lcom/alensw/transfer/ac;)V

    iput-object v0, p0, Lcom/alensw/transfer/ac;->y:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/a/t;)Lcom/alensw/transfer/a/t;
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/transfer/ac;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ac;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/alensw/transfer/a/t;)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ac;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ac;->r:Ljava/util/HashMap;

    iget v1, p0, Lcom/alensw/transfer/ac;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    iget-object v1, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    iget-object v2, p0, Lcom/alensw/transfer/ac;->p:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alensw/transfer/ac;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/alensw/transfer/TransferService;->a(Lcom/alensw/transfer/a/t;Lcom/alensw/transfer/a/t;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v2

    new-instance v6, Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/alensw/transfer/ac;->p:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/alensw/transfer/as;

    const v1, 0x7f0a0048

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/transfer/as;-><init>(Lcom/alensw/transfer/ac;Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/LinkedHashSet;)V

    invoke-virtual {v0}, Lcom/alensw/transfer/as;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/transfer/ac;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alensw/transfer/ac;->s:Z

    return p1
.end method

.method private b(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v6, v1

    :goto_0
    if-eqz v6, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v5, v2

    :goto_1
    if-ge v5, v7, :cond_4

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_2

    move v3, v2

    :goto_2
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v6, :cond_3

    move v3, v4

    :goto_3
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_1
    move v6, v2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/alensw/transfer/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->i()V

    return-void
.end method

.method static synthetic b(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/a/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/a/t;)V

    return-void
.end method

.method static synthetic c(Lcom/alensw/transfer/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->j()V

    return-void
.end method

.method static synthetic d(Lcom/alensw/transfer/ac;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/a/t;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/transfer/ac;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/ax;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->m:Lcom/alensw/transfer/ax;

    return-object v0
.end method

.method static synthetic i(Lcom/alensw/transfer/ac;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/ac;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0a00cb

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alensw/transfer/ac;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/transfer/ac;->i:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget v0, p0, Lcom/alensw/transfer/ac;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alensw/transfer/ac;->q:I

    return-void
.end method

.method static synthetic j(Lcom/alensw/transfer/ac;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->w:Ljava/util/Comparator;

    return-object v0
.end method

.method private j()V
    .locals 6

    iget-boolean v0, p0, Lcom/alensw/transfer/ac;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a00d1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    new-instance v4, Lcom/alensw/transfer/at;

    invoke-direct {v4, p0, v0}, Lcom/alensw/transfer/at;-><init>(Lcom/alensw/transfer/ac;Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    const/16 v5, 0x21

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v1, 0x7f0a00c8

    invoke-static {v0, v1, v2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alensw/transfer/au;

    invoke-direct {v4, p0}, Lcom/alensw/transfer/au;-><init>(Lcom/alensw/transfer/ac;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/alensw/transfer/av;

    invoke-direct {v2, p0, v1, v0}, Lcom/alensw/transfer/av;-><init>(Lcom/alensw/transfer/ac;Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/alensw/transfer/aw;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/aw;-><init>(Lcom/alensw/transfer/ac;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v1}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/transfer/ac;->s:Z

    goto :goto_0
.end method

.method static synthetic k(Lcom/alensw/transfer/ac;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private k()Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    shr-int/lit8 v8, v0, 0x18

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x1

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x2

    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v6, v7

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    :goto_0
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/ac;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "TransferSendFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal wifi address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_2
    return v0

    :cond_2
    :try_start_1
    const-string v0, "192.168.43.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "TransferSendFragment"

    const-string v6, "get wifi address: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const-string v0, "TransferSendFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get wifi address: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Lcom/alensw/transfer/a/t;

    iget v5, p0, Lcom/alensw/transfer/ac;->d:I

    invoke-direct {v3, v0, v4, v5}, Lcom/alensw/transfer/a/t;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    iput-object v3, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    move-object v0, v1

    check-cast v0, Lcom/alensw/transfer/TransferActivity;

    iget-object v1, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    invoke-virtual {v1}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/TransferActivity;->a(Ljava/lang/CharSequence;)V

    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alensw/transfer/ac;->b:Ljava/lang/String;

    goto :goto_3
.end method

.method static synthetic l(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/TransferService;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    return-object v0
.end method

.method private l()V
    .locals 5

    iget-boolean v0, p0, Lcom/alensw/transfer/ac;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->b()I

    move-result v0

    iput v0, p0, Lcom/alensw/transfer/ac;->d:I

    iget v0, p0, Lcom/alensw/transfer/ac;->d:I

    if-nez v0, :cond_0

    const-string v0, "TransferSendFragment"

    const-string v1, "Service listen port is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    iget v1, p0, Lcom/alensw/transfer/ac;->d:I

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/t;->a(I)V

    iget-object v0, p0, Lcom/alensw/transfer/ac;->k:Lcom/alensw/transfer/a/a;

    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/transfer/ac;->e:Lcom/alensw/transfer/a/t;

    iget-object v3, p0, Lcom/alensw/transfer/ac;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alensw/transfer/ac;->t:Lcom/alensw/transfer/a/j;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/transfer/a/a;->a(Landroid/content/Context;Lcom/alensw/transfer/a/t;Ljava/lang/String;Lcom/alensw/transfer/a/j;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/transfer/ac;->v:Z

    :cond_1
    return-void
.end method

.method static synthetic m(Lcom/alensw/transfer/ac;)I
    .locals 1

    iget v0, p0, Lcom/alensw/transfer/ac;->q:I

    return v0
.end method

.method private m()V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/transfer/ac;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ac;->k:Lcom/alensw/transfer/a/a;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/a;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/transfer/ac;->v:Z

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alensw/transfer/ac;)Lcom/alensw/ui/view/ImageGridView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ac;->i:Lcom/alensw/ui/view/ImageGridView;

    return-object v0
.end method

.method private n()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getWifiApState"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    add-int/lit8 v0, v0, -0xa

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method static synthetic o(Lcom/alensw/transfer/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/transfer/ac;->a:Z

    return v0
.end method

.method static synthetic p(Lcom/alensw/transfer/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/transfer/ac;->v:Z

    return v0
.end method

.method static synthetic q(Lcom/alensw/transfer/ac;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic r(Lcom/alensw/transfer/ac;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic s(Lcom/alensw/transfer/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->l()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f09003e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alensw/transfer/ac;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alensw/transfer/ac;->h:Landroid/widget/ListView;

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v0, 0x7f09003f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/transfer/ac;->j:Landroid/widget/TextView;

    const v0, 0x7f090005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ImageGridView;

    iput-object v0, p0, Lcom/alensw/transfer/ac;->i:Lcom/alensw/ui/view/ImageGridView;

    iget-object v0, p0, Lcom/alensw/transfer/ac;->i:Lcom/alensw/ui/view/ImageGridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/ImageGridView;->setTextMode(I)V

    return-object v1
.end method

.method public a()V
    .locals 4

    invoke-super {p0}, Lcom/alensw/transfer/a;->a()V

    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/ac;->y:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->l()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alensw/transfer/ac;->j()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/alensw/transfer/ac;->m()V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/alensw/transfer/a;->a(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/alensw/transfer/ac;->a(Ljava/util/ArrayList;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/alensw/transfer/a;->a(Landroid/app/Activity;)V

    iput-boolean v8, p0, Lcom/alensw/transfer/ac;->a:Z

    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v0, 0x7f01000e

    invoke-static {p1, v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;)I

    move-result v4

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "transfer_name"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/ac;->b:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/alensw/transfer/TransferActivity;

    iget-object v5, p0, Lcom/alensw/transfer/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alensw/transfer/TransferActivity;->a(Ljava/lang/CharSequence;)V

    const v0, 0x7f050028

    invoke-static {v2, v0, v3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/transfer/ac;->g:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f090040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f05002f

    invoke-static {v2, v5, v3, v4}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/alensw/transfer/ad;

    invoke-direct {v5, p0, p1}, Lcom/alensw/transfer/ad;-><init>(Lcom/alensw/transfer/ac;Landroid/app/Activity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090041

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f050030

    invoke-static {v2, v5, v3, v4}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/alensw/transfer/ap;

    invoke-direct {v3, p0}, Lcom/alensw/transfer/ap;-><init>(Lcom/alensw/transfer/ac;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/transfer/ac;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alensw/transfer/ac;->m:Lcom/alensw/transfer/ax;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alensw/transfer/ac;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alensw/transfer/ac;->u:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0030

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a00cf

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0a00c8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    new-instance v5, Lcom/alensw/transfer/aq;

    invoke-direct {v5, p0}, Lcom/alensw/transfer/aq;-><init>(Lcom/alensw/transfer/ac;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f09003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/alensw/transfer/ac;->i:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/transfer/ac;->n:Lcom/alensw/transfer/ay;

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v3, v3, Lcom/alensw/a/bc;->d:I

    sget-object v4, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v4, v4, Lcom/alensw/a/bc;->e:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/aj;II)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/transfer/ac;->b(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/alensw/transfer/ac;->a(Ljava/util/ArrayList;)V

    return-void

    :cond_1
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Landroid/app/Service;)V
    .locals 2

    instance-of v0, p1, Lcom/alensw/transfer/TransferService;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alensw/transfer/TransferService;

    iput-object p1, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    iget-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    iget-object v1, p0, Lcom/alensw/transfer/ac;->x:Lcom/alensw/transfer/bj;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/TransferService;->a(Lcom/alensw/transfer/bj;)V

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->l()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alensw/transfer/a;->a(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/alensw/transfer/ac;->b(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0062

    iget-object v2, p0, Lcom/alensw/transfer/ac;->b:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/alensw/transfer/ar;

    invoke-direct {v4, p0, v0}, Lcom/alensw/transfer/ar;-><init>(Lcom/alensw/transfer/ac;Landroid/app/Activity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090062
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/transfer/a;->b()V

    invoke-virtual {p0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/ac;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public b(Landroid/app/Service;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    iget-object v1, p0, Lcom/alensw/transfer/ac;->x:Lcom/alensw/transfer/bj;

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/TransferService;->b(Lcom/alensw/transfer/bj;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/transfer/ac;->f:Lcom/alensw/transfer/TransferService;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/transfer/ac;->a:Z

    invoke-super {p0}, Lcom/alensw/transfer/a;->e()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-super {p0}, Lcom/alensw/transfer/a;->f()V

    invoke-direct {p0}, Lcom/alensw/transfer/ac;->m()V

    return-void
.end method
