.class public Lcom/mob/mobapm/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Z = false

.field public static c:I = 0x12c

.field public static d:I = 0x12c

.field public static e:Z = false

.field public static f:Z = false

.field public static g:Z = false

.field public static h:Z = false

.field public static i:Z = false

.field public static j:I


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "apm"

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lcom/mob/mobapm/core/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result p1

    if-ne p1, v1, :cond_a

    :cond_2
    sget-boolean p1, Lcom/mob/mobapm/core/c;->b:Z

    if-eqz p1, :cond_a

    .line 15
    sput-boolean v1, Lcom/mob/mobapm/MobAPM;->goldenKey:Z

    .line 16
    invoke-static {}, Lcom/mob/mobapm/core/d;->d()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "openSentinel"

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/mob/mobapm/core/c;->e:Z

    :cond_3
    const-string v1, "stuckCollection"

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/mob/mobapm/core/c;->g:Z

    :cond_4
    const-string v1, "crashCollection"

    .line 28
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 30
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/mob/mobapm/core/c;->f:Z

    :cond_5
    const-string v1, "socketCollection"

    .line 33
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 35
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/mob/mobapm/core/c;->h:Z

    :cond_6
    const-string v1, "dnsCollection"

    .line 38
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 40
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/mob/mobapm/core/c;->i:Z

    :cond_7
    const-string v1, "apmhuh"

    .line 43
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12c

    if-eqz v1, :cond_8

    .line 45
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/mob/mobapm/core/c;->c:I

    if-gtz v1, :cond_8

    .line 47
    sput v2, Lcom/mob/mobapm/core/c;->c:I

    :cond_8
    const-string v1, "apmauh"

    .line 51
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 53
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/mob/mobapm/core/c;->d:I

    if-gtz v1, :cond_9

    .line 55
    sput v2, Lcom/mob/mobapm/core/c;->d:I

    :cond_9
    const-string v1, "httpAnalysisSize"

    .line 58
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 60
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_a

    .line 61
    sget v1, Lcom/mob/mobapm/core/c;->j:I

    if-eq p1, v1, :cond_a

    .line 62
    sput p1, Lcom/mob/mobapm/core/c;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 69
    :try_start_2
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APM: init error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 75
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_a
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/mobapm/e/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/mob/mobapm/core/c;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/mob/mobapm/core/c;->b(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APM: init golden key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mob/mobapm/MobAPM;->goldenKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", apmhuh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mob/mobapm/core/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apmauh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mob/mobapm/core/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 8
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM: init os: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", soc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mob/mobapm/core/c;->i:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 10
    sget-boolean p1, Lcom/mob/mobapm/MobAPM;->goldenKey:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/mob/mobapm/e/g;->a()V

    .line 14
    :cond_1
    sget-boolean p1, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Lcom/mob/mobapm/e/a;->b()Lcom/mob/mobapm/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/e/a;->a()V

    .line 16
    invoke-static {}, Lcom/mob/mobapm/core/a;->d()Lcom/mob/mobapm/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/core/k;->a()V

    .line 17
    invoke-static {}, Lcom/mob/mobapm/core/j;->d()Lcom/mob/mobapm/core/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/core/k;->a()V

    .line 18
    invoke-static {}, Lcom/mob/mobapm/core/i;->d()Lcom/mob/mobapm/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/core/k;->a()V

    .line 19
    invoke-static {}, Lcom/mob/mobapm/core/b;->e()Lcom/mob/mobapm/core/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/core/b;->c()V

    .line 22
    :cond_2
    sget-boolean p1, Lcom/mob/mobapm/core/c;->f:Z

    if-eqz p1, :cond_3

    .line 23
    new-instance p1, Lcom/mob/mobapm/core/m/a;

    invoke-direct {p1}, Lcom/mob/mobapm/core/m/a;-><init>()V

    invoke-virtual {p1}, Lcom/mob/mobapm/core/m/a;->a()V

    .line 24
    invoke-static {}, Lcom/mob/mobapm/core/g;->b()Lcom/mob/mobapm/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/core/g;->a()V

    .line 27
    :cond_3
    sget-boolean p1, Lcom/mob/mobapm/core/c;->g:Z

    if-eqz p1, :cond_4

    .line 28
    new-instance p1, Lcom/mob/mobapm/core/l/a;

    invoke-direct {p1}, Lcom/mob/mobapm/core/l/a;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 29
    invoke-static {}, Lcom/mob/mobapm/core/f;->b()Lcom/mob/mobapm/core/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/core/f;->a()V

    .line 32
    :cond_4
    sget-boolean p1, Lcom/mob/mobapm/core/c;->h:Z

    if-eqz p1, :cond_5

    .line 33
    invoke-static {}, Lcom/mob/mobapm/core/h;->d()Lcom/mob/mobapm/core/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/core/k;->a()V

    :cond_5
    return-void
.end method
