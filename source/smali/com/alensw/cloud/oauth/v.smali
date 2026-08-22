.class public Lcom/alensw/cloud/oauth/v;
.super Lcom/alensw/cloud/oauth/ad;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "9EEADi^^HHH]8@@8=62A:D]4@>^2FE9^FD6C:?7@]6>2:= 9EEADi^^HHH]8@@8=62A:D]4@>^2FE9^FD6C:?7@]AC@7:=6 9EEADi^^HHH]8@@8=62A:D]4@>^2FE9^5C:G6"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/cloud/oauth/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    sget-object v1, Lcom/alensw/cloud/z;->d:Lcom/alensw/cloud/z;

    const-string v0, "`_ehfheah`ecb\\C_2a:hhG4G=:@g5_>dfF<_;hca;::C4a]2AAD]8@@8=6FD6C4@?E6?E]4@>"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "w<(c\"4AzKp>9yaIe2Ab\\q\\<>"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alensw/cloud/oauth/v;->a:Ljava/lang/String;

    const-string v0, "9EEADi^^244@F?ED]8@@8=6]4@>^@^@2FE9a^2FE9"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "9EEADi^^244@F?ED]8@@8=6]4@>^@^@2FE9a^E@<6?"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "9EEAi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"

    invoke-static {v0}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v9, "2446DD0EJA6"

    invoke-static {v9}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x1

    const-string v9, "@77=:?6"

    invoke-static {v9}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x2

    const-string v9, "2AAC@G2=0AC@>AE"

    invoke-static {v9}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x3

    const-string v9, "7@C46"

    invoke-static {v9}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/alensw/cloud/oauth/ad;-><init>(Lcom/alensw/cloud/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/cloud/oauth/a;Lcom/alensw/b/e/f;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "https://www.googleapis.com/oauth2/v2/userinfo"

    const-string v2, "GET"

    invoke-static {v0, v2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v0, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAuth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v3, v3, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OAuthApi20"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get user info: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Lcom/alensw/cloud/oauth/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    throw v0
.end method
