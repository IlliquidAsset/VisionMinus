.class public final Lcom/mob/commons/authorize/DeviceAuthorizer;
.super Ljava/lang/Object;
.source "DeviceAuthorizer.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field static a:Ljava/lang/String;

.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mob/commons/authorize/DeviceAuthorizer;->b:Ljava/util/HashSet;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mob/commons/authorize/DeviceAuthorizer;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/mob/commons/authorize/DeviceAuthorizer;->b(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/mob/commons/authorize/DeviceAuthorizer;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/MobProductCollector;->registerProduct(Lcom/mob/commons/MobProduct;)Z

    .line 50
    sget-object v1, Lcom/mob/commons/authorize/DeviceAuthorizer;->b:Ljava/util/HashSet;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 52
    sget-object v3, Lcom/mob/commons/authorize/DeviceAuthorizer;->b:Ljava/util/HashSet;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    sget-object v3, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    new-instance v1, Lcom/mob/commons/authorize/a;

    invoke-direct {v1}, Lcom/mob/commons/authorize/a;-><init>()V

    invoke-virtual {v1, v2, v2}, Lcom/mob/commons/authorize/a;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v2, v1

    .line 61
    :goto_0
    sget-object v1, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v1}, Lcom/mob/commons/authorize/DeviceAuthorizer;->b(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 64
    new-instance p0, Lcom/mob/commons/authorize/a;

    invoke-direct {p0}, Lcom/mob/commons/authorize/a;-><init>()V

    invoke-virtual {p0}, Lcom/mob/commons/authorize/a;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 66
    :cond_2
    :try_start_1
    sget-object p0, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_3
    if-eqz v2, :cond_4

    .line 70
    :try_start_2
    new-instance v1, Lcom/mob/commons/authorize/DeviceAuthorizer$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/authorize/DeviceAuthorizer$1;-><init>(Lcom/mob/commons/MobProduct;)V

    .line 81
    invoke-virtual {v1}, Lcom/mob/commons/authorize/DeviceAuthorizer$1;->start()V

    .line 83
    :cond_4
    sget-object p0, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static authorizeForOnce()Ljava/lang/String;
    .locals 2

    .line 26
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->isFor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/mob/commons/authorize/DeviceAuthorizer;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/mob/commons/authorize/a;

    invoke-direct {v0}, Lcom/mob/commons/authorize/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/mob/commons/authorize/a;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 87
    sget-object v0, Lcom/mob/commons/authorize/DeviceAuthorizer;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    new-instance v1, Lcom/mob/commons/authorize/a;

    invoke-direct {v1}, Lcom/mob/commons/authorize/a;-><init>()V

    .line 90
    invoke-static {}, Lcom/mob/commons/a;->b()Z

    .line 91
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mob/commons/b;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1, p0, p1}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 94
    invoke-virtual {v1, p0, p1}, Lcom/mob/commons/authorize/a;->a(ZZ)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getMString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/mob/commons/b/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFor()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/mob/commons/b;->ad()Z

    move-result v0

    return v0
.end method
