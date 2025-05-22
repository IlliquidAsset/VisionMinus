.class public Lcom/mob/commons/b/m;
.super Lcom/mob/commons/b/f;
.source "Xiaomi.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 63
    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 68
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected c()Lcom/mob/commons/b/f$c;
    .locals 12

    const/16 v0, 0x62

    .line 15
    invoke-static {v0}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v0, v1

    .line 26
    :goto_0
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/16 v5, 0x63

    .line 30
    :try_start_2
    invoke-static {v5}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    .line 32
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    move-object v5, v1

    :goto_2
    const/16 v6, 0x64

    .line 35
    :try_start_3
    invoke-static {v6}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v6

    .line 37
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    move-object v6, v1

    :goto_3
    const/16 v7, 0x65

    .line 40
    :try_start_4
    invoke-static {v7}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v7

    .line 42
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    move-object v7, v1

    :goto_4
    const/16 v8, 0x66

    .line 45
    :try_start_5
    invoke-static {v8}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v8

    .line 47
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :goto_5
    move-object v11, v5

    move-object v5, v1

    move-object v1, v6

    move-object v6, v11

    goto :goto_6

    :cond_0
    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    .line 51
    :goto_6
    new-instance v8, Lcom/mob/commons/b/f$c;

    invoke-direct {v8}, Lcom/mob/commons/b/f$c;-><init>()V

    .line 52
    iget-object v9, p0, Lcom/mob/commons/b/m;->a:Landroid/content/Context;

    invoke-direct {p0, v9, v2, v1}, Lcom/mob/commons/b/m;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/mob/commons/b/m;->a:Landroid/content/Context;

    invoke-direct {p0, v1, v2, v7}, Lcom/mob/commons/b/m;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/mob/commons/b/f$c;->e:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/mob/commons/b/m;->a:Landroid/content/Context;

    invoke-direct {p0, v1, v2, v5}, Lcom/mob/commons/b/m;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/mob/commons/b/f$c;->c:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/mob/commons/b/m;->a:Landroid/content/Context;

    invoke-direct {p0, v1, v2, v6}, Lcom/mob/commons/b/m;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/mob/commons/b/f$c;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_7

    :cond_1
    const/4 v3, 0x0

    .line 56
    :goto_7
    iput-boolean v3, v8, Lcom/mob/commons/b/f$c;->a:Z

    return-object v8
.end method
