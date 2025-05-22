.class public Lcom/mob/commons/b/g;
.super Lcom/mob/commons/b/f;
.source "Meizu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/g$a;
    }
.end annotation


# instance fields
.field private c:Lcom/mob/commons/b/g$a;

.field private d:Lcom/mob/commons/b/g$a;

.field private e:Lcom/mob/commons/b/g$a;

.field private f:Lcom/mob/commons/b/g$a;

.field private g:Lcom/mob/commons/b/g$a;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Lcom/mob/commons/b/g$a;

    const/16 v0, 0x47

    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/g;->c:Lcom/mob/commons/b/g$a;

    .line 15
    new-instance p1, Lcom/mob/commons/b/g$a;

    const/16 v0, 0x45

    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/g;->d:Lcom/mob/commons/b/g$a;

    .line 16
    new-instance p1, Lcom/mob/commons/b/g$a;

    const/16 v0, 0x46

    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/g;->e:Lcom/mob/commons/b/g$a;

    .line 17
    new-instance p1, Lcom/mob/commons/b/g$a;

    const/16 v0, 0x4b

    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/g;->f:Lcom/mob/commons/b/g$a;

    .line 18
    new-instance p1, Lcom/mob/commons/b/g$a;

    const/16 v0, 0x7d

    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/g;->g:Lcom/mob/commons/b/g$a;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/b/g;)Lcom/mob/commons/b/g$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mob/commons/b/g;->c:Lcom/mob/commons/b/g$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/mob/commons/b/g$a;Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    .line 62
    invoke-virtual {p2}, Lcom/mob/commons/b/g$a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {p2}, Lcom/mob/commons/b/g$a;->a(Lcom/mob/commons/b/g$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x7c

    .line 65
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    invoke-static {p2}, Lcom/mob/commons/b/g$a;->b(Lcom/mob/commons/b/g$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v2, 0x7e

    .line 71
    invoke-static {v2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 73
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p2, v2}, Lcom/mob/commons/b/g$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    if-nez p3, :cond_4

    const/16 p3, 0x82

    .line 77
    invoke-static {p3}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_3

    .line 79
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/mob/commons/b/g$a;->a(J)V

    :cond_3
    const/16 p2, 0x77

    .line 81
    invoke-static {p2}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 83
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_4

    .line 85
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 86
    invoke-direct {p0, v8}, Lcom/mob/commons/b/g;->a(Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 87
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;->a(Z)Z

    .line 92
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_5
    if-eqz p3, :cond_6

    const-string p3, "1"

    .line 96
    invoke-virtual {p2, p3}, Lcom/mob/commons/b/g$a;->a(Ljava/lang/String;)V

    .line 98
    :cond_6
    invoke-direct {p0, v8}, Lcom/mob/commons/b/g;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 99
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 103
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-object v0
.end method

.method private a(Z)Z
    .locals 3

    const-string v0, "0"

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/mob/commons/b/g;->g:Lcom/mob/commons/b/g$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mob/commons/b/g$a;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/mob/commons/b/g;->g:Lcom/mob/commons/b/g$a;

    invoke-virtual {p1}, Lcom/mob/commons/b/g$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mob/commons/b/g;->g:Lcom/mob/commons/b/g$a;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/mob/commons/b/g;->a(Landroid/content/Context;Lcom/mob/commons/b/g$a;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic b(Lcom/mob/commons/b/g;)Lcom/mob/commons/b/g$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mob/commons/b/g;->d:Lcom/mob/commons/b/g$a;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/commons/b/g;)Lcom/mob/commons/b/g$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mob/commons/b/g;->e:Lcom/mob/commons/b/g$a;

    return-object p0
.end method

.method static synthetic d(Lcom/mob/commons/b/g;)Lcom/mob/commons/b/g$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mob/commons/b/g;->f:Lcom/mob/commons/b/g$a;

    return-object p0
.end method

.method private j()V
    .locals 5

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->h:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x83

    .line 112
    invoke-static {v1}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    new-instance v1, Lcom/mob/commons/b/g$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/g$1;-><init>(Lcom/mob/commons/b/g;)V

    iput-object v1, p0, Lcom/mob/commons/b/g;->h:Landroid/content/BroadcastReceiver;

    .line 143
    iget-object v1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mob/commons/b/g;->h:Landroid/content/BroadcastReceiver;

    const/16 v3, 0x84

    invoke-static {v3}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized b()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 28
    monitor-exit p0

    return-object v0

    .line 30
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/g;->f:Lcom/mob/commons/b/g$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/g;->a(Landroid/content/Context;Lcom/mob/commons/b/g$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 36
    monitor-exit p0

    return-object v0

    .line 38
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/g;->d:Lcom/mob/commons/b/g$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/g;->a(Landroid/content/Context;Lcom/mob/commons/b/g$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 44
    monitor-exit p0

    return-object v0

    .line 46
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/g;->c:Lcom/mob/commons/b/g$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/g;->a(Landroid/content/Context;Lcom/mob/commons/b/g$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    monitor-exit p0

    return-object v0

    .line 54
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/g;->e:Lcom/mob/commons/b/g$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/g;->a(Landroid/content/Context;Lcom/mob/commons/b/g$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
