.class public Lcom/alensw/ui/a/ae;
.super Lcom/alensw/ui/a/u;
.source "ae.java"


# static fields
.field public static final m:Ljava/util/Comparator;


# instance fields
.field protected final c:Lcom/alensw/ui/view/PathBar;

.field protected final d:Landroid/widget/ListView;

.field protected final e:Landroid/graphics/drawable/Drawable;

.field protected final f:Z

.field protected final g:Z

.field protected final h:I

.field protected final i:I

.field protected final j:I

.field protected k:Lcom/alensw/a/e;

.field protected l:Lcom/alensw/a/e;

.field protected n:Landroid/widget/BaseAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alensw/ui/a/af;

    invoke-direct {v0}, Lcom/alensw/ui/a/af;-><init>()V

    sput-object v0, Lcom/alensw/ui/a/ae;->m:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/alensw/ui/a/an;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/alensw/ui/a/u;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/alensw/ui/a/am;

    invoke-direct {v0, p0}, Lcom/alensw/ui/a/am;-><init>(Lcom/alensw/ui/a/ae;)V

    iput-object v0, p0, Lcom/alensw/ui/a/ae;->n:Landroid/widget/BaseAdapter;

    const v0, 0x7f0a0070

    invoke-super {p0, v0}, Lcom/alensw/ui/a/u;->setTitle(I)V

    const v0, 0x7f03000e

    invoke-super {p0, v0}, Lcom/alensw/ui/a/u;->a(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/a/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x20400

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/alensw/ui/a/ae;->h:I

    const v3, 0x7f080006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/alensw/ui/a/ae;->j:I

    iget v3, p0, Lcom/alensw/ui/a/ae;->h:I

    iget v4, p0, Lcom/alensw/ui/a/ae;->j:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/alensw/ui/a/ae;->i:I

    iget-object v3, p0, Lcom/alensw/ui/a/ae;->a:Landroid/content/Context;

    const v4, 0x1010038

    invoke-static {v3, v4}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x7f050031

    iget v5, p0, Lcom/alensw/ui/a/ae;->h:I

    invoke-static {v0, v4, v3, v5}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/a/ae;->e:Landroid/graphics/drawable/Drawable;

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/a/ae;->f:Z

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alensw/ui/a/ae;->g:Z

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p3

    :cond_1
    new-instance v0, Lcom/alensw/a/e;

    invoke-direct {v0, p3, v2}, Lcom/alensw/a/e;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v0, Lcom/alensw/a/e;

    invoke-direct {v0, v3, v2}, Lcom/alensw/a/e;-><init>(Ljava/io/File;I)V

    :goto_2
    iput-object v0, p0, Lcom/alensw/ui/a/ae;->l:Lcom/alensw/a/e;

    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/alensw/ui/a/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/PathBar;

    iput-object v0, p0, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v0, p3}, Lcom/alensw/ui/view/PathBar;->setPath(Ljava/io/File;)V

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    new-instance v2, Lcom/alensw/ui/a/ag;

    invoke-direct {v2, p0}, Lcom/alensw/ui/a/ag;-><init>(Lcom/alensw/ui/a/ae;)V

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/PathBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/alensw/ui/a/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alensw/ui/a/ae;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alensw/ui/a/ae;->n:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/alensw/ui/a/ah;

    invoke-direct {v1, p0}, Lcom/alensw/ui/a/ah;-><init>(Lcom/alensw/ui/a/ae;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, -0x1

    const v1, 0x104000a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/a/ai;

    invoke-direct {v2, p0, p4}, Lcom/alensw/ui/a/ai;-><init>(Lcom/alensw/ui/a/ae;Lcom/alensw/ui/a/an;)V

    invoke-super {p0, v0, v1, v2}, Lcom/alensw/ui/a/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/a/aj;

    invoke-direct {v2, p0}, Lcom/alensw/ui/a/aj;-><init>(Lcom/alensw/ui/a/ae;)V

    invoke-super {p0, v0, v1, v2}, Lcom/alensw/ui/a/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-boolean v0, p0, Lcom/alensw/ui/a/ae;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x3

    const v1, 0x7f0a004c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/a/ak;

    invoke-direct {v2, p0, p1, p4}, Lcom/alensw/ui/a/ak;-><init>(Lcom/alensw/ui/a/ae;Landroid/content/Context;Lcom/alensw/ui/a/an;)V

    invoke-super {p0, v0, v1, v2}, Lcom/alensw/ui/a/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;ILjava/io/File;Lcom/alensw/ui/a/an;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "com.alensw.PicFolder_preferences"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "external_files"

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-static {p0}, Lcom/alensw/ui/a/ae;->setupSaf(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/alensw/ui/a/ae;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alensw/ui/a/ae;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/alensw/ui/a/an;)V

    invoke-virtual {v2}, Lcom/alensw/ui/a/ae;->show()V

    :goto_1
    return-void
.end method

.method static setupSaf(Landroid/content/Context;)V
    .locals 3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x3228c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PathBar;->getPath()Ljava/io/File;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v1, v1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    sget-object v3, Lcom/alensw/ui/a/ae;->m:Ljava/util/Comparator;

    invoke-static {v1, v0, v3}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v0, v0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alensw/b/l/b;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/a/ae;->a:Landroid/content/Context;

    instance-of v0, v1, Lcom/alensw/ui/activity/p;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/alensw/ui/activity/p;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/ui/activity/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create folder \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' failed!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/alensw/a/e;

    invoke-direct {v1, p1, v0}, Lcom/alensw/a/e;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-object v2, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-boolean v3, p0, Lcom/alensw/ui/a/ae;->f:Z

    invoke-virtual {v1, v2, v3}, Lcom/alensw/a/s;->a(Lcom/alensw/a/e;Z)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v1, v1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    sget-object v2, Lcom/alensw/ui/a/ae;->m:Ljava/util/Comparator;

    invoke-static {v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/util/Comparator;)Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/alensw/a/e;

    invoke-direct {v2, v1, v0}, Lcom/alensw/a/e;-><init>(Ljava/io/File;I)V

    iput-object v2, p0, Lcom/alensw/ui/a/ae;->l:Lcom/alensw/a/e;

    iget-object v1, p0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v1, v1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alensw/ui/a/ae;->l:Lcom/alensw/a/e;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/alensw/ui/a/ae;->n:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-boolean v1, p0, Lcom/alensw/ui/a/ae;->g:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-virtual {v2, v1}, Lcom/alensw/a/bh;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-virtual {v2, v1}, Lcom/alensw/a/bh;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alensw/ui/a/ae;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lcom/alensw/ui/a/ae;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/ui/a/ae;->l:Lcom/alensw/a/e;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alensw/ui/a/u;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PathBar;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/a/ae;->a(Ljava/io/File;)V

    return-void
.end method
