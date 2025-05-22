.class public Lcom/mob/commons/b/d;
.super Ljava/lang/Object;
.source "FidsSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/commons/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mob/commons/b/d$a;
    .locals 5

    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-static {}, Lcom/mob/commons/b/d$a;->values()[Lcom/mob/commons/b/d$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 167
    invoke-static {v3}, Lcom/mob/commons/b/d$a;->a(Lcom/mob/commons/b/d$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {}, Lcom/mob/commons/b/d;->a()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/mob/commons/b/d;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    sget-object p0, Lcom/mob/commons/b/d$a;->a:Lcom/mob/commons/b/d$a;

    return-object p0

    .line 173
    :cond_3
    :goto_1
    sget-object p0, Lcom/mob/commons/b/d$a;->o:Lcom/mob/commons/b/d$a;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/b/d;

    monitor-enter v0

    .line 21
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-static {p0}, Lcom/mob/commons/b/b;->a(Landroid/content/Context;)Lcom/mob/commons/b/b;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/mob/commons/b/b;->a()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x49

    const/16 v6, 0x48

    if-eqz v4, :cond_3

    .line 26
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/16 v8, 0x47

    .line 28
    invoke-static {v8}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 29
    invoke-static {v6}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/16 v8, 0x4a

    .line 31
    invoke-static {v8}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 32
    invoke-static {v5}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_2
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v3, "fidsCache"

    .line 35
    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_3
    invoke-static {p0}, Lcom/mob/commons/b/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {p0}, Lcom/mob/commons/b/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-static {p0}, Lcom/mob/commons/b/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-static {p0}, Lcom/mob/commons/b/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-nez v4, :cond_4

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    const/4 p0, 0x0

    .line 44
    monitor-exit v0

    return-object p0

    .line 46
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/mob/commons/b/d;->b(Landroid/content/Context;)Z

    move-result p0

    const/16 v4, 0x4b

    .line 47
    invoke-static {v4}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x45

    .line 48
    invoke-static {v4}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x46

    .line 49
    invoke-static {v4}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {v6}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {v5}, Lcom/mob/commons/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move v7, p0

    .line 53
    invoke-virtual/range {v2 .. v7}, Lcom/mob/commons/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.build.freeme.label"

    .line 185
    invoke-static {v1}, Lcom/mob/commons/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "FREEMEOS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 207
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 208
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private static b()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.ssui.product"

    .line 199
    invoke-static {v1}, Lcom/mob/commons/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 108
    invoke-static {p0}, Lcom/mob/commons/b/d;->h(Landroid/content/Context;)V

    .line 109
    sget-object p0, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->h()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/mob/commons/b/d;->h(Landroid/content/Context;)V

    .line 117
    sget-object p0, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 124
    invoke-static {p0}, Lcom/mob/commons/b/d;->h(Landroid/content/Context;)V

    .line 125
    sget-object p0, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->e()Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0, p0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 132
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/mob/commons/b/d;->h(Landroid/content/Context;)V

    .line 142
    sget-object p0, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-static {p0}, Lcom/mob/commons/b/d;->h(Landroid/content/Context;)V

    .line 150
    sget-object p0, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 157
    invoke-static {p0}, Lcom/mob/commons/b/d;->h(Landroid/content/Context;)V

    .line 158
    sget-object p0, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized h(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/mob/commons/b/d;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v0

    return-void

    .line 61
    :cond_0
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Lcom/mob/commons/b/d;->a(Ljava/lang/String;)Lcom/mob/commons/b/d$a;

    move-result-object v1

    .line 62
    sget-object v2, Lcom/mob/commons/b/d$a;->a:Lcom/mob/commons/b/d$a;

    if-ne v1, v2, :cond_1

    .line 63
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    .line 67
    :cond_1
    :try_start_2
    sget-object v2, Lcom/mob/commons/b/d$1;->a:[I

    invoke-virtual {v1}, Lcom/mob/commons/b/d$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    new-instance v1, Lcom/mob/commons/b/n;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 97
    :pswitch_1
    new-instance v1, Lcom/mob/commons/b/i;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 94
    :pswitch_2
    new-instance v1, Lcom/mob/commons/b/g;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 90
    :pswitch_3
    new-instance v1, Lcom/mob/commons/b/k;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 87
    :pswitch_4
    new-instance v1, Lcom/mob/commons/b/a;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 84
    :pswitch_5
    new-instance v1, Lcom/mob/commons/b/h;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 80
    :pswitch_6
    new-instance v1, Lcom/mob/commons/b/j;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 76
    :pswitch_7
    new-instance v1, Lcom/mob/commons/b/e;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 73
    :pswitch_8
    new-instance v1, Lcom/mob/commons/b/l;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;

    goto :goto_0

    .line 70
    :pswitch_9
    new-instance v1, Lcom/mob/commons/b/m;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/d;->a:Lcom/mob/commons/b/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
