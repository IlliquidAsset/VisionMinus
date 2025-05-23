.class public final Lorg/xutils/cache/DiskCacheEntity;
.super Ljava/lang/Object;
.source "DiskCacheEntity.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "disk_cache"
.end annotation


# instance fields
.field private bytesContent:[B
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "bytesContent"
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "etag"
    .end annotation
.end field

.field private expires:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "expires"
    .end annotation
.end field

.field private hits:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "hits"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "key"
        property = "UNIQUE"
    .end annotation
.end field

.field private lastAccess:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "lastAccess"
    .end annotation
.end field

.field private lastModify:Ljava/util/Date;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "lastModify"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "path"
    .end annotation
.end field

.field private textContent:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "textContent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 31
    iput-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    return-void
.end method


# virtual methods
.method public getBytesContent()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->bytesContent:[B

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    return-wide v0
.end method

.method public getHits()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->hits:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccess()J
    .locals 5

    .line 123
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->lastAccess:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getLastModify()Ljava/util/Date;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->lastModify:Ljava/util/Date;

    return-object v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->textContent:Ljava/lang/String;

    return-object v0
.end method

.method public setBytesContent([B)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->bytesContent:[B

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->etag:Ljava/lang/String;

    return-void
.end method

.method public setExpires(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    return-void
.end method

.method public setHits(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->hits:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->id:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastAccess(J)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->lastAccess:J

    return-void
.end method

.method public setLastModify(Ljava/util/Date;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->lastModify:Ljava/util/Date;

    return-void
.end method

.method setPath(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->textContent:Ljava/lang/String;

    return-void
.end method
