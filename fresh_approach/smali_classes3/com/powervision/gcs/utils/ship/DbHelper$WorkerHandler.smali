.class public Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "DbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ship/DbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/ship/DbHelper;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/utils/ship/DbHelper;Landroid/os/Looper;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;->this$0:Lcom/powervision/gcs/utils/ship/DbHelper;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;

    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    const-string v2, "WorkerHandler"

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 146
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;->this$0:Lcom/powervision/gcs/utils/ship/DbHelper;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/DbHelper;->access$100(Lcom/powervision/gcs/utils/ship/DbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/powervision/gcs/utils/ship/DbQuery;->drop(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    :try_start_1
    const-string p1, "EVENT_ARG_DELETE"

    .line 134
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;->this$0:Lcom/powervision/gcs/utils/ship/DbHelper;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/DbHelper;->access$100(Lcom/powervision/gcs/utils/ship/DbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    iget-object v2, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->where:Ljava/lang/String;

    iget-object v3, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->whereargs:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/powervision/gcs/utils/ship/DbQuery;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 136
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz p1, :cond_9

    .line 137
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/powervision/gcs/utils/ship/DbCallback;->onQuery(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 139
    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz v1, :cond_9

    .line 140
    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/utils/ship/DbCallback;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 120
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;->this$0:Lcom/powervision/gcs/utils/ship/DbHelper;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/DbHelper;->access$100(Lcom/powervision/gcs/utils/ship/DbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    iget-object v2, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-static {p1, v1, v2}, Lcom/powervision/gcs/utils/ship/DbQuery;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz p1, :cond_9

    .line 127
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/utils/ship/DbCallback;->onQuery(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 122
    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz v1, :cond_3

    .line 123
    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/utils/ship/DbCallback;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 103
    :cond_4
    :try_start_3
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->valueList:Ljava/util/List;

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->valueList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 104
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;->this$0:Lcom/powervision/gcs/utils/ship/DbHelper;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/DbHelper;->access$100(Lcom/powervision/gcs/utils/ship/DbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    iget-object v2, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->valueList:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/powervision/gcs/utils/ship/DbQuery;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v1

    goto :goto_0

    .line 106
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;->this$0:Lcom/powervision/gcs/utils/ship/DbHelper;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/DbHelper;->access$100(Lcom/powervision/gcs/utils/ship/DbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->table:Ljava/lang/String;

    iget-object v2, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-static {p1, v1, v2}, Lcom/powervision/gcs/utils/ship/DbQuery;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 113
    :goto_0
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz p1, :cond_9

    .line 114
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/utils/ship/DbCallback;->onQuery(Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 109
    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz v1, :cond_6

    .line 110
    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/utils/ship/DbCallback;->onError(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    .line 82
    :cond_7
    :try_start_4
    iget-object p1, p0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerHandler;->this$0:Lcom/powervision/gcs/utils/ship/DbHelper;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ship/DbHelper;->access$000(Lcom/powervision/gcs/utils/ship/DbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->query:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/powervision/gcs/utils/ship/DbQuery;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 84
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 85
    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz v1, :cond_9

    .line 86
    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    invoke-interface {v1, p1}, Lcom/powervision/gcs/utils/ship/DbCallback;->onQuery(Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    :cond_8
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz p1, :cond_9

    .line 89
    iget-object p1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v2, "query fail"

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/powervision/gcs/utils/ship/DbCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p1

    .line 93
    iget-object v1, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    if-eqz v1, :cond_9

    .line 94
    iget-object v0, v0, Lcom/powervision/gcs/utils/ship/DbHelper$WorkerArgs;->callback:Lcom/powervision/gcs/utils/ship/DbCallback;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/utils/ship/DbCallback;->onError(Ljava/lang/Throwable;)V

    :cond_9
    :goto_1
    return-void
.end method
