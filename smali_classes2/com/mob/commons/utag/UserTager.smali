.class public final Lcom/mob/commons/utag/UserTager;
.super Ljava/lang/Object;
.source "UserTager.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/utag/UserTager$CustomTag;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

.field private static c:Lcom/mob/tools/utils/Hashon;

.field private static d:Lcom/mob/tools/utils/DeviceHelper;


# instance fields
.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mob/commons/utag/UserTagError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UserTag_1"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/SQLiteHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/utag/UserTager;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "time"

    const-string v2, "text"

    const/4 v3, 0x1

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    sget-object v0, Lcom/mob/commons/utag/UserTager;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    const-string v1, "data"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->addField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    sput-object v0, Lcom/mob/commons/utag/UserTager;->c:Lcom/mob/tools/utils/Hashon;

    .line 49
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    .line 51
    new-instance v0, Lcom/mob/commons/utag/UserTager$1;

    invoke-direct {v0}, Lcom/mob/commons/utag/UserTager$1;-><init>()V

    const-string v1, "t"

    invoke-static {v1, v0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/utag/UserTager;->a:Landroid/os/Handler;

    .line 77
    invoke-static {}, Lcom/mob/commons/utag/UserTager;->c()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/utag/UserTager;->e:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/mob/commons/utag/UserTager;->c()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/utag/UserTager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/utag/UserTager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/mob/commons/utag/UserTager;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Ljava/util/HashMap;Lcom/mob/commons/utag/UserTagError;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/mob/commons/utag/UserTager;->b(Ljava/util/HashMap;Lcom/mob/commons/utag/UserTagError;)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 188
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "plat"

    const/4 v3, 0x1

    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mac"

    .line 190
    sget-object v4, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duid"

    const/4 v4, 0x0

    .line 191
    invoke-static {v4}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "model"

    .line 192
    sget-object v4, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    .line 193
    sget-object v4, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "serialno"

    .line 194
    sget-object v4, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appkey"

    .line 195
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "apppkg"

    .line 196
    sget-object v4, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appver"

    .line 197
    sget-object v4, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v4}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "datas"

    .line 198
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "e3e28dce5fe8fc1bb56a25964219d5dc2976edb171b99b1103c2c4f89ad0b66fb58669fe69eb0b5d11e8be990b0715b4de2b4e5a5dcce121f47f18063d5d99f9"

    const-string v2, "256f461cc45979b52264ac022ff1353ea5f8140d35686ffdae2faee09db2006c3b43c2bb74ce6f4c51698db6384c1c0ceca958208d65c7ed345a04ea6349ca39601818c3d5500565ba49ed49c0f4014b06980d17fc069c95d30092d0cfdaddf783ea96c5f8bdc42b6765d71a5d12192ef74646b41d92f1caeba3123e71938d39"

    .line 205
    new-instance v4, Lcom/mob/MobCommunicator;

    const/16 v5, 0x400

    invoke-direct {v4, v5, p0, v2}, Lcom/mob/MobCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string p0, "http://api.utag.mob.com/bdata"

    .line 206
    invoke-static {p0}, Lcom/mob/commons/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-virtual {v4, v1, p0, v0}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p0

    .line 210
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method private static b(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v2, 0x27

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "___datetime"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 224
    :cond_1
    sget-object p0, Lcom/mob/commons/utag/UserTager;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mob/tools/utils/SQLiteHelper;->delete(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 226
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static b(Ljava/util/HashMap;Lcom/mob/commons/utag/UserTagError;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mob/commons/utag/UserTagError;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "found a key of null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " > "

    const-string v5, "\' is too long: "

    const/16 v6, 0x1e

    if-le v3, v6, :cond_2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 105
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 107
    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 117
    invoke-interface {p1, v0}, Lcom/mob/commons/utag/UserTagError;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    .line 123
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    const-string v2, "___datetime"

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "time"

    .line 127
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    .line 128
    sget-object v1, Lcom/mob/commons/utag/UserTager;->c:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, p0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object p0, Lcom/mob/commons/utag/UserTager;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    invoke-static {p0, v2}, Lcom/mob/tools/utils/SQLiteHelper;->insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_6

    .line 133
    invoke-interface {p1, p0}, Lcom/mob/commons/utag/UserTagError;->onError(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .line 28
    invoke-static {}, Lcom/mob/commons/utag/UserTager;->d()Z

    move-result v0

    return v0
.end method

.method private static c()V
    .locals 4

    .line 82
    sget-object v0, Lcom/mob/commons/utag/UserTager;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    sget-object v0, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "none"

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2710

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/32 v2, 0x927c0

    .line 88
    :goto_1
    sget-object v0, Lcom/mob/commons/utag/UserTager;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static d()Z
    .locals 3

    .line 139
    sget-object v0, Lcom/mob/commons/utag/UserTager;->d:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "none"

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    invoke-static {}, Lcom/mob/commons/b;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 146
    :cond_1
    invoke-static {}, Lcom/mob/commons/utag/UserTager;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 148
    invoke-static {v0}, Lcom/mob/commons/utag/UserTager;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-static {v0}, Lcom/mob/commons/utag/UserTager;->b(Ljava/util/ArrayList;)V

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 155
    invoke-static {}, Lcom/mob/commons/utag/UserTager;->d()Z

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private static e()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "data"

    .line 163
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 164
    sget-object v2, Lcom/mob/commons/utag/UserTager;->b:Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    invoke-static {v2, v1, v0, v0, v0}, Lcom/mob/tools/utils/SQLiteHelper;->query(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 169
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 174
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    :cond_2
    sget-object v3, Lcom/mob/commons/utag/UserTager;->c:Lcom/mob/tools/utils/Hashon;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 178
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    .line 181
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public commit()V
    .locals 4

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/mob/commons/utag/UserTager;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 253
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    .line 254
    iput v2, v1, Landroid/os/Message;->what:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 255
    iget-object v0, p0, Lcom/mob/commons/utag/UserTager;->f:Lcom/mob/commons/utag/UserTagError;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/mob/commons/utag/UserTager;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public set(Ljava/lang/String;)Lcom/mob/commons/utag/UserTager$CustomTag;
    .locals 2

    .line 238
    new-instance v0, Lcom/mob/commons/utag/UserTager$CustomTag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/mob/commons/utag/UserTager$CustomTag;-><init>(Lcom/mob/commons/utag/UserTager;Lcom/mob/commons/utag/UserTager;Ljava/lang/String;Lcom/mob/commons/utag/UserTager$1;)V

    return-object v0
.end method

.method public whenError(Lcom/mob/commons/utag/UserTagError;)Lcom/mob/commons/utag/UserTager;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/mob/commons/utag/UserTager;->f:Lcom/mob/commons/utag/UserTagError;

    return-object p0
.end method
