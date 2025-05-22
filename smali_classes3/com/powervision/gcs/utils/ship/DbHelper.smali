.class public final Lcom/powervision/gcs/utils/ship/DbHelper;
.super Ljava/lang/Object;
.source "DbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/ship/DbHelper$Builder;,
        Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;,
        Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;
    }
.end annotation


# static fields
.field private static final DEFATULT_RETRY_COUNT:I = 0x3

.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_DROP:I = 0x5

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static helper:Lcom/powervision/gcs/utils/ship/DbHelper;

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mWorkerThreadHandler:Landroid/os/Handler;

.field private openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private retryCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DbHelper"

    .line 25
    iput-object v0, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->retryCount:I

    .line 161
    const-class v0, Lcom/powervision/gcs/utils/ship/DbHelper;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/ship/DbHelper;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DbHelper"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 166
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/powervision/gcs/utils/ship/DbHelper;->sLooper:Landroid/os/Looper;

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/VideoHelper;->getInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 169
    sget-object p1, Lcom/powervision/gcs/utils/ship/DbHelper;->sLooper:Landroid/os/Looper;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/utils/ship/DbHelper;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/powervision/gcs/utils/ship/DbHelper$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/powervision/gcs/utils/ship/DbHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/ship/DbHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ship/DbHelper;->getReadDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/utils/ship/DbHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ship/DbHelper;->getWriteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 176
    new-instance v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;-><init>(Lcom/powervision/gcs/utils/ship/DbHelper;Landroid/os/Looper;)V

    return-object v0
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/ship/DbHelper;
    .locals 1

    .line 184
    sget-object v0, Lcom/powervision/gcs/utils/ship/DbHelper;->helper:Lcom/powervision/gcs/utils/ship/DbHelper;

    return-object v0
.end method

.method private getReadDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "open helper must not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getWriteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "open helper must not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initialize(Lcom/powervision/gcs/utils/ship/DbHelper;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/powervision/gcs/utils/ship/DbHelper;->helper:Lcom/powervision/gcs/utils/ship/DbHelper;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/powervision/gcs/utils/ship/DbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/powervision/gcs/utils/ship/DbCallback;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/powervision/gcs/utils/ship/DbCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/utils/ship/DbCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;-><init>()V

    .line 264
    iput-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    .line 265
    iput-object p4, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    .line 266
    iput-object p2, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->where:Ljava/lang/String;

    .line 267
    iput-object p3, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->whereargs:[Ljava/lang/String;

    .line 269
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x4

    .line 270
    iput p2, p1, Landroid/os/Message;->what:I

    .line 271
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iget-object p2, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deleteAll(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/utils/ship/DbHelper;->deleteAll(Ljava/lang/String;Lcom/powervision/gcs/utils/ship/DbCallback;)V

    return-void
.end method

.method public deleteAll(Ljava/lang/String;Lcom/powervision/gcs/utils/ship/DbCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/utils/ship/DbCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/powervision/gcs/utils/ship/DbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/powervision/gcs/utils/ship/DbCallback;)V

    return-void
.end method

.method public drop(Ljava/lang/String;)V
    .locals 2

    .line 319
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ship/DbHelper;->getWriteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/powervision/gcs/utils/ship/DbQuery;->drop(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 321
    new-instance v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;-><init>()V

    .line 323
    iput-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    .line 325
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x5

    .line 326
    iput v1, p1, Landroid/os/Message;->what:I

    .line 327
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, p1, p2, v0}, Lcom/powervision/gcs/utils/ship/DbHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;Lcom/powervision/gcs/utils/ship/DbCallback;)V

    return-void
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;Lcom/powervision/gcs/utils/ship/DbCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Lcom/powervision/gcs/utils/ship/DbCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;-><init>()V

    .line 208
    iput-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    .line 209
    iput-object p2, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 210
    iput-object p3, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    .line 212
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    .line 214
    iput p2, p1, Landroid/os/Message;->what:I

    .line 215
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget-object p2, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public insert(Ljava/lang/String;Ljava/util/List;Lcom/powervision/gcs/utils/ship/DbCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/powervision/gcs/utils/ship/DbCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;-><init>()V

    .line 226
    iput-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    .line 227
    iput-object p3, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    .line 228
    iput-object p2, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->valueList:Ljava/util/List;

    .line 230
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    .line 231
    iput p2, p1, Landroid/os/Message;->what:I

    .line 232
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    iget-object p2, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public query(Ljava/lang/String;Lcom/powervision/gcs/utils/ship/DbCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/utils/ship/DbCallback<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;-><init>()V

    .line 243
    iput-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->query:Ljava/lang/String;

    .line 244
    iput-object p2, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    .line 246
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 247
    iput p2, p1, Landroid/os/Message;->what:I

    .line 248
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object p2, p0, Lcom/powervision/gcs/utils/ship/DbHelper;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
