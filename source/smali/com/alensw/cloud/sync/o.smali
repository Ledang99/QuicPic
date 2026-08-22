.class Lcom/alensw/cloud/sync/o;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/sync/SyncSettings;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/SyncSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v3, 0x0

    const v4, 0x7f090053

    const/16 v7, 0x8

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/SyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    const v1, 0x7f030007

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    const/high16 v2, 0x7f030000

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    const v2, 0x7f050018

    iget-object v3, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v3}, Lcom/alensw/cloud/sync/SyncSettings;->f(Lcom/alensw/cloud/sync/SyncSettings;)I

    move-result v3

    invoke-static {v6, v2, v3}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/alensw/cloud/sync/p;

    invoke-direct {v2, p0}, Lcom/alensw/cloud/sync/p;-><init>(Lcom/alensw/cloud/sync/o;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    move-object p2, v0

    :cond_1
    const v0, 0x7f09000e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09000f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v4}, Lcom/alensw/cloud/sync/SyncSettings;->a(Lcom/alensw/cloud/sync/SyncSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alensw/cloud/sync/s;

    iget-object v5, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v5}, Lcom/alensw/cloud/sync/SyncSettings;->b(Lcom/alensw/cloud/sync/SyncSettings;)Lcom/alensw/cloud/sync/s;

    move-result-object v5

    if-ne v4, v5, :cond_2

    const v5, 0x7f0a0006

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v4, Lcom/alensw/cloud/sync/s;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p2

    :cond_2
    iget-object v5, v4, Lcom/alensw/cloud/sync/s;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v5, v4, Lcom/alensw/cloud/sync/s;->b:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    :try_start_0
    invoke-static {v7}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alensw/PicFolder/CloudProvider;->e(Ljava/lang/String;)Lcom/alensw/cloud/z;

    move-result-object v5

    invoke-static {v5}, Lcom/alensw/cloud/e;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/x;

    move-result-object v5

    iget v5, v5, Lcom/alensw/cloud/x;->b:I

    iget-object v8, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v8}, Lcom/alensw/cloud/sync/SyncSettings;->f(Lcom/alensw/cloud/sync/SyncSettings;)I

    move-result v8

    invoke-static {v6, v5, v8}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/alensw/cloud/sync/s;->b:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v5, v4, Lcom/alensw/cloud/sync/s;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/SyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    iget-object v8, v4, Lcom/alensw/cloud/sync/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/alensw/a/bh;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    const v8, 0x7f0a001d

    invoke-virtual {v0, v8}, Lcom/alensw/cloud/sync/SyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v8, v4, Lcom/alensw/cloud/sync/s;->a:Ljava/lang/String;

    if-nez v8, :cond_4

    invoke-static {v5, v7}, Lcom/alensw/b/j/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alensw/cloud/sync/s;->a:Ljava/lang/String;

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " -> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v4, Lcom/alensw/cloud/sync/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/alensw/cloud/sync/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, v4, Lcom/alensw/cloud/sync/s;->a:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/alensw/cloud/sync/s;->c:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/alensw/cloud/sync/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/alensw/cloud/sync/t;

    move-result-object v5

    const-string v1, " "

    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->f(Lcom/alensw/cloud/sync/SyncSettings;)I

    move-result v0

    if-eqz v5, :cond_5

    iget v7, v5, Lcom/alensw/cloud/sync/t;->a:I

    packed-switch v7, :pswitch_data_0

    :cond_5
    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/alensw/cloud/sync/s;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_6
    iget-object v0, v4, Lcom/alensw/cloud/sync/s;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/l/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v0, "/"

    goto :goto_3

    :pswitch_0
    const v0, 0x7f0a009d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v8, v5, Lcom/alensw/cloud/sync/t;->d:J

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v10

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alensw/cloud/sync/t;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->f(Lcom/alensw/cloud/sync/SyncSettings;)I

    move-result v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/alensw/cloud/sync/o;->a:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->g(Lcom/alensw/cloud/sync/SyncSettings;)I

    move-result v0

    goto :goto_4

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a00c0

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x2026

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
