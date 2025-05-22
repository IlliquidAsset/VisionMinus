.class Lorg/xutils/http/cookie/DbCookieStore$2;
.super Ljava/lang/Object;
.source "DbCookieStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/cookie/DbCookieStore;->trimSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/http/cookie/DbCookieStore;


# direct methods
.method constructor <init>(Lorg/xutils/http/cookie/DbCookieStore;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "!="

    const-string v1, "expiry"

    .line 276
    iget-object v2, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v2}, Lorg/xutils/http/cookie/DbCookieStore;->access$000(Lorg/xutils/http/cookie/DbCookieStore;)V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 279
    iget-object v4, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v4}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v4, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v4, v2, v3}, Lorg/xutils/http/cookie/DbCookieStore;->access$102(Lorg/xutils/http/cookie/DbCookieStore;J)J

    const-wide/16 v2, -0x1

    .line 287
    :try_start_0
    iget-object v4, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v4}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v4

    const-class v5, Lorg/xutils/http/cookie/CookieEntity;

    const-string v6, "<"

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v6

    .line 289
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v1, v0, v7}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v6

    .line 287
    invoke-interface {v4, v5, v6}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 291
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    :goto_0
    :try_start_1
    iget-object v4, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v4}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v4

    const-class v5, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v4, v5}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v4

    long-to-int v5, v4

    const/16 v4, 0x1392

    if-le v5, v4, :cond_1

    .line 298
    iget-object v4, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v4}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v4

    const-class v6, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v4, v6}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v4

    .line 299
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v0, v2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v0

    add-int/lit16 v5, v5, -0x1388

    .line 300
    invoke-virtual {v0, v5}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v1}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
