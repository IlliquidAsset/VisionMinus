.class public Lcom/mob/commons/b/j;
.super Lcom/mob/commons/b/f;
.source "Oppo.java"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 50
    iget-object v0, p0, Lcom/mob/commons/b/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mob/commons/b/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/b/j;->b:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/b/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/mob/commons/b/j;->b:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    .line 57
    array-length v4, v0

    if-lez v4, :cond_2

    .line 58
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v4, "SHA1"

    .line 59
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 61
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x100

    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/b/j;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    const/16 v0, 0x5d

    .line 71
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/mob/commons/b/j;->b:Ljava/lang/String;

    aput-object v0, v9, v3

    iget-object v0, p0, Lcom/mob/commons/b/j;->c:Ljava/lang/String;

    aput-object v0, v9, v2

    const/4 v0, 0x2

    aput-object p2, v9, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/mob/commons/b/j;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 4

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    new-instance v1, Landroid/content/ComponentName;

    const/16 v2, 0x57

    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x58

    invoke-static {v3}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x59

    .line 37
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/os/IBinder;)Lcom/mob/commons/b/f$c;
    .locals 2

    .line 42
    new-instance v0, Lcom/mob/commons/b/f$c;

    invoke-direct {v0}, Lcom/mob/commons/b/f$c;-><init>()V

    const/16 v1, 0x5a

    .line 43
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mob/commons/b/j;->a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/f$c;->c:Ljava/lang/String;

    const/16 v1, 0x5b

    .line 44
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mob/commons/b/j;->a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    const/16 v1, 0x5c

    .line 45
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mob/commons/b/j;->a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/b/f$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized h()Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/b/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x57

    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x1

    cmp-long v3, v1, v5

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    if-eqz v1, :cond_2

    .line 29
    :try_start_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    .line 31
    :catchall_0
    monitor-exit p0

    return v0
.end method
