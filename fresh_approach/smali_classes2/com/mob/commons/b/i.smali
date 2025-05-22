.class public Lcom/mob/commons/b/i;
.super Lcom/mob/commons/b/f;
.source "Nubia.java"


# instance fields
.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x76

    .line 14
    invoke-static {p1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/b/i;->c:Landroid/net/Uri;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/b/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/mob/commons/b/i;->a(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x7a

    .line 33
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    const/16 p2, 0x7b

    .line 35
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x77

    .line 75
    :try_start_0
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    nop

    :catchall_0
    :cond_0
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    .line 52
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 53
    iget-object v1, p0, Lcom/mob/commons/b/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/i;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 54
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 63
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 64
    iget-object v1, p0, Lcom/mob/commons/b/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/i;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 68
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private j()Z
    .locals 3

    const/16 v0, 0x78

    .line 42
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/b/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/mob/commons/b/i;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x79

    .line 44
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected c()Lcom/mob/commons/b/f$c;
    .locals 3

    .line 22
    new-instance v0, Lcom/mob/commons/b/f$c;

    invoke-direct {v0}, Lcom/mob/commons/b/f$c;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/mob/commons/b/i;->j()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mob/commons/b/f$c;->a:Z

    const/16 v1, 0x66

    .line 24
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/i;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/f$c;->c:Ljava/lang/String;

    const/16 v1, 0x64

    .line 25
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    const/16 v1, 0x65

    .line 26
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/i;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/f$c;->e:Ljava/lang/String;

    return-object v0
.end method
