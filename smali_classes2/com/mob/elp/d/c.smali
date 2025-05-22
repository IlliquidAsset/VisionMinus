.class public Lcom/mob/elp/d/c;
.super Ljava/lang/Object;
.source "ELPDeviceHelper.java"


# static fields
.field private static a:Lcom/mob/elp/d/c;

.field private static b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/elp/d/c;
    .locals 2

    const-class v0, Lcom/mob/elp/d/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/elp/d/c;->a:Lcom/mob/elp/d/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/elp/d/c;

    invoke-direct {v1}, Lcom/mob/elp/d/c;-><init>()V

    sput-object v1, Lcom/mob/elp/d/c;->a:Lcom/mob/elp/d/c;

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 4
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v1, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/mob/elp/d/c;->b()Ljava/lang/String;

    .line 7
    :cond_0
    sget-object v1, Lcom/mob/elp/d/c;->a:Lcom/mob/elp/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "get"

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 9
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v5

    .line 10
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ro.build.version.emui"

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "ro.miui.ui.version.name"

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "V"

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "ro.build.display.id"

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    const-string v4, "."

    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "ro.build.version.opporom"

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :cond_3
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System UI Version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/elp/d/d;->a(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 28
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 13

    .line 1
    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    const-string v1, "huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "ro.vivo.os.version"

    const-string v3, "ro.build.display.id"

    const-string v4, "ro.build.version.opporom"

    const-string v5, "ro.meizu.product.model"

    const-string v6, "ro.miui.ui.version.name"

    const-string v7, "ro.build.version.emui"

    const-string v8, "vivo"

    const-string v9, "oppo"

    const-string v10, "meizu"

    const-string v11, "xiaomi"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v7}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 4
    sput-object v1, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_0
    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v6}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 10
    sput-object v11, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    return-object v0

    .line 13
    :cond_1
    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {v5}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    sput-object v10, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    .line 17
    invoke-static {v3}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :cond_2
    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-static {v4}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 22
    sput-object v9, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    return-object v0

    .line 25
    :cond_3
    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-static {v2}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 28
    sput-object v8, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    return-object v0

    .line 33
    :cond_4
    invoke-static {v7}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 35
    sput-object v1, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    return-object v0

    .line 38
    :cond_5
    invoke-static {v6}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 40
    sput-object v11, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    return-object v0

    .line 43
    :cond_6
    invoke-static {v5}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 45
    sput-object v10, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    .line 46
    invoke-static {v3}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_7
    invoke-static {v4}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 50
    sput-object v9, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    return-object v0

    .line 53
    :cond_8
    invoke-static {v2}, Lcom/mob/elp/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 55
    sput-object v8, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    :cond_9
    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    const-string v1, "oppo"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    return-object v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/elp/d/c;->b:Ljava/lang/String;

    return-object v0
.end method
