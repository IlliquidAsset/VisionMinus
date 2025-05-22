.class Lcom/mob/commons/c$1;
.super Ljava/lang/Object;
.source "DataHeap.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/c;->b(JLjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/mob/commons/c;


# direct methods
.method constructor <init>(Lcom/mob/commons/c;JLjava/util/HashMap;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/mob/commons/c$1;->c:Lcom/mob/commons/c;

    iput-wide p2, p0, Lcom/mob/commons/c$1;->a:J

    iput-object p4, p0, Lcom/mob/commons/c$1;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 6

    .line 231
    :try_start_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "time"

    .line 232
    iget-wide v1, p0, Lcom/mob/commons/c$1;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/mob/commons/c$1;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/mob/commons/c$1;->b:Ljava/util/HashMap;

    const-string v2, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lcom/mob/commons/c$1;->b:Ljava/util/HashMap;

    const-string v2, "apppkg"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/mob/commons/c$1;->b:Ljava/util/HashMap;

    const-string v2, "appver"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {}, Lcom/mob/commons/b;->ak()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 240
    iget-object v3, p0, Lcom/mob/commons/c$1;->b:Ljava/util/HashMap;

    const-string v4, "strategyId"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/mob/commons/c$1;->c:Lcom/mob/commons/c;

    invoke-static {v1}, Lcom/mob/commons/c;->a(Lcom/mob/commons/c;)Lcom/mob/tools/utils/Hashon;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/c$1;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object v0

    const-string v1, "data"

    const/4 v2, 0x2

    .line 246
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/mob/commons/c$1;->c:Lcom/mob/commons/c;

    invoke-static {v0}, Lcom/mob/commons/c;->b(Lcom/mob/commons/c;)Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/SQLiteHelper;->insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 249
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
