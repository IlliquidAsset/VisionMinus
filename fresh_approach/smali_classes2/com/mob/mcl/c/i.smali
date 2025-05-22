.class public Lcom/mob/mcl/c/i;
.super Ljava/lang/Object;
.source "TcpHelper.java"

# interfaces
.implements Lcom/mob/mcl/c/f;
.implements Lcom/mob/tools/utils/ActivityTracker$Tracker;


# static fields
.field private static volatile y:Lcom/mob/mcl/c/i;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/util/concurrent/atomic/AtomicLong;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Z

.field private m:Lcom/mob/tools/network/NetworkHelper;

.field private n:Lcom/mob/tools/utils/Hashon;

.field private o:Lcom/mob/mcl/c/h;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/content/Context;

.field private s:Lcom/mob/mcl/MCLSDK$ELPMessageListener;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Lcom/mob/mcl/BusinessMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Lcom/mob/mcl/d/c;

.field private w:J

.field private x:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x10e

    .line 4
    iput v0, p0, Lcom/mob/mcl/c/i;->e:I

    .line 48
    new-instance v0, Lcom/mob/mcl/c/h;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/h;-><init>(Lcom/mob/mcl/c/f;)V

    iput-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    .line 49
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/i;->m:Lcom/mob/tools/network/NetworkHelper;

    .line 50
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/i;->n:Lcom/mob/tools/utils/Hashon;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/i;->t:Ljava/util/HashMap;

    .line 52
    new-instance v0, Lcom/mob/mcl/d/c;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/mcl/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/mcl/c/i;->v:Lcom/mob/mcl/d/c;

    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 324
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 325
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-array v0, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v0, v2

    .line 315
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%16s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string v0, "0"

    .line 316
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    .line 317
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x0

    .line 319
    invoke-static {p1, v1, v2}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string v1, "data"

    .line 320
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private a(JZ)V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    if-eqz v0, :cond_5

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/mcl/c/i;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "state"

    .line 101
    :try_start_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p3, p0, Lcom/mob/mcl/c/i;->n:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p3, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x3ee

    .line 103
    invoke-direct {p0, v0, p3}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 105
    :goto_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp sd ty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , u = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 107
    iget-object p3, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-nez v5, :cond_1

    .line 108
    iget-object p1, p3, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p1

    .line 110
    :cond_1
    iget-object p3, p3, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    .line 111
    new-instance v4, Lcom/mob/mcl/c/e;

    invoke-direct {v4}, Lcom/mob/mcl/c/e;-><init>()V

    .line 112
    iget-object v5, p3, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 113
    :try_start_2
    iget-object v6, p3, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    :try_start_3
    iget-object v4, p3, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    add-int/lit8 v5, v2, 0x11

    .line 117
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x1

    .line 118
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v5, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    const-string p1, "UTF-8"

    .line 123
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    :cond_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 126
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 127
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 130
    :try_start_4
    iget-object p2, p3, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    check-cast p2, Lcom/mob/mcl/c/i;

    if-eqz p2, :cond_3

    .line 131
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p1

    .line 132
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 133
    :cond_4
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 134
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Z
    .locals 5

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 282
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/mob/mcl/c/i;->v:Lcom/mob/mcl/d/c;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 288
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 289
    iget-object p2, p0, Lcom/mob/mcl/c/i;->v:Lcom/mob/mcl/d/c;

    invoke-virtual {p2, p1, v0, v1}, Lcom/mob/mcl/d/c;->a(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1
.end method

.method private declared-synchronized a(ZLjava/lang/String;ILjava/lang/String;I)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_4

    const/4 v1, 0x3

    if-ge p3, v1, :cond_4

    .line 146
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tp rg domain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 148
    :try_start_1
    invoke-virtual {p0, p2, p4, p5}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v3, "type"

    .line 150
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "type"

    .line 151
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v4, "token"

    .line 152
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    iget-object v1, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "token"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :try_start_2
    const-string v4, "domain"

    .line 155
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "domain"

    .line 156
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    .line 157
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v3, p0

    move-object v7, p4

    move v8, p5

    .line 158
    invoke-direct/range {v3 .. v8}, Lcom/mob/mcl/c/i;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    if-ne v3, v1, :cond_3

    .line 161
    :try_start_3
    iput-boolean v2, p0, Lcom/mob/mcl/c/i;->u:Z

    .line 162
    iget-object p2, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    .line 163
    iget-object p2, p2, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p2, v0}, Lcom/mob/mcl/c/a;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p2

    .line 165
    :try_start_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tcp register exp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v6, p3, 0x1

    .line 167
    iget-object p2, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v6, p2, :cond_4

    if-nez p1, :cond_4

    const/4 v4, 0x0

    .line 168
    iget-object p1, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v3, p0

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/mob/mcl/c/i;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return p1

    :cond_4
    const/4 p1, 0x0

    .line 172
    :try_start_5
    invoke-static {p1}, Lcom/mob/mcl/d/d;->a(Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 175
    :try_start_6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_0
    monitor-exit p0

    return v0

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/mob/mcl/c/i;->p:Ljava/lang/String;

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/mob/mcl/c/i;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apppkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-direct {p0}, Lcom/mob/mcl/c/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pushId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    const-string v2, "guardId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/i;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/mcl/c/i;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 105
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mob_guard_version"

    .line 107
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v2, "version"

    .line 109
    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 113
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 115
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mob/mcl/c/i;->n:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 116
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 117
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/mob/mcl/c/i;->n:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 125
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method private b(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    if-eqz v0, :cond_3

    const/16 v1, 0x3ed

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-nez v5, :cond_0

    .line 2
    :try_start_0
    iget-object v3, v0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-wide v3, p1

    .line 4
    :goto_0
    iget-object v0, v0, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 5
    new-instance v6, Lcom/mob/mcl/c/e;

    invoke-direct {v6}, Lcom/mob/mcl/c/e;-><init>()V

    .line 6
    iget-object v7, v0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v8, v0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    :try_start_2
    iget-object v6, v0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const/16 v7, 0x11

    .line 11
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x1

    .line 12
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v7, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 20
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 21
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 24
    :try_start_3
    iget-object v0, v0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    check-cast v0, Lcom/mob/mcl/c/i;

    if-eqz v0, :cond_1

    .line 25
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 26
    :goto_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tp sd ty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , u = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bo : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_1
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_2
    move-exception p1

    .line 28
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p1

    .line 29
    :cond_2
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 30
    :goto_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private b(JZ)V
    .locals 11

    .line 31
    iget-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    if-eqz v0, :cond_5

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/mcl/c/i;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "repeat"

    .line 35
    :try_start_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p3, p0, Lcom/mob/mcl/c/i;->n:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p3, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x3ef

    .line 37
    invoke-direct {p0, v0, p3}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    iget-object v3, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-nez v6, :cond_1

    .line 40
    iget-object v4, v3, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, p1

    .line 42
    :goto_1
    iget-object v3, v3, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 43
    new-instance v7, Lcom/mob/mcl/c/e;

    invoke-direct {v7}, Lcom/mob/mcl/c/e;-><init>()V

    .line 44
    iget-object v8, v3, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    :try_start_2
    iget-object v9, v3, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :try_start_3
    iget-object v7, v3, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    add-int/lit8 v8, v2, 0x11

    .line 49
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x1

    .line 50
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v8, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    const-string v2, "UTF-8"

    .line 55
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    :cond_2
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 58
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 59
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 62
    :try_start_4
    iget-object v2, v3, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    check-cast v2, Lcom/mob/mcl/c/i;

    if-eqz v2, :cond_3

    .line 63
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 64
    :goto_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tp sd ty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , u = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bo : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 65
    :cond_3
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p1

    .line 66
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 67
    :cond_4
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 68
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private b(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "determineDomain"

    const-string v1, "uniqueKey"

    const-string v2, "uniqueId"

    const-string v3, "domains"

    const/4 v4, 0x0

    .line 69
    :try_start_0
    iput-boolean v4, p0, Lcom/mob/mcl/c/i;->l:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 72
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mob/mcl/c/i;->a:J

    .line 74
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mob/mcl/c/i;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "tick"

    .line 75
    :try_start_1
    iget v2, p0, Lcom/mob/mcl/c/i;->e:I

    invoke-static {p1, v1, v2}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mob/mcl/c/i;->e:I

    const-string v1, "globalSwitch"

    .line 76
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mob/mcl/c/i;->f:Z

    const-string v1, "connectSwitch"

    .line 77
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/mob/mcl/c/i;->g:Z

    const-string v1, "forwardSwitch"

    .line 78
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/mob/mcl/c/i;->h:Z

    const-string v1, "bindRequestSwitch"

    .line 79
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/mob/mcl/c/i;->i:Z

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 83
    iput-boolean v2, p0, Lcom/mob/mcl/c/i;->l:Z

    .line 84
    iget-object v0, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 91
    :cond_5
    iget-object p1, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/mob/mcl/c/i;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_6

    return v2

    :catchall_0
    move-exception p1

    .line 96
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_6
    return v4
.end method

.method public static c()Lcom/mob/mcl/c/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mcl/c/i;->y:Lcom/mob/mcl/c/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mcl/c/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/i;->y:Lcom/mob/mcl/c/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/mcl/c/i;

    invoke-direct {v1}, Lcom/mob/mcl/c/i;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/i;->y:Lcom/mob/mcl/c/i;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/c/i;->y:Lcom/mob/mcl/c/i;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mob/mcl/c/i;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mcl/c/i;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/mob/mcl/c/i;->s:Lcom/mob/mcl/MCLSDK$ELPMessageListener;

    if-eqz v0, :cond_1

    const-string v0, "expire"

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "workId"

    .line 277
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-direct {p0, v1, v0}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/i;->s:Lcom/mob/mcl/MCLSDK$ELPMessageListener;

    invoke-interface {v0, p1}, Lcom/mob/mcl/MCLSDK$ELPMessageListener;->messageReceived(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 313
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 314
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/mob/mcl/c/i;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tp sd ty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , bo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , out = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 81
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance p3, Lcom/mob/mcl/c/g;

    .line 83
    invoke-direct {p3, p1, v1}, Lcom/mob/mcl/c/g;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    new-instance v2, Lcom/mob/mcl/c/g;

    invoke-direct {p0, v0, p3}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p1, p3}, Lcom/mob/mcl/c/g;-><init>(ILjava/lang/String;)V

    move-object p3, v2

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    invoke-virtual {p1, p3}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/c/g;)Lcom/mob/mcl/c/e;

    move-result-object p1

    int-to-long p2, p2

    .line 88
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v2}, Lcom/mob/mcl/c/e;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    iget p2, p1, Lcom/mob/mcl/c/g;->b:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_1

    .line 90
    iget-object p2, p1, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p2}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 93
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " tp rp : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 96
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 25
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tp rg main = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , bo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , out = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    const-string v0, ":"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    const/4 v5, 0x1

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v2, v4, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x1388

    .line 28
    iget-object v4, v0, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    if-eqz v4, :cond_2

    .line 29
    iget-object v4, v4, Lcom/mob/mcl/c/a;->c:Ljava/net/SocketAddress;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    iget-object v4, v0, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    invoke-virtual {v4, v3}, Lcom/mob/mcl/c/a;->a(Z)V

    goto :goto_1

    .line 31
    :cond_0
    iget-object v4, v0, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 33
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 34
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 35
    invoke-virtual {v4, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 36
    new-instance p1, Lcom/mob/mcl/c/a;

    iget-object v6, v0, Lcom/mob/mcl/c/h;->b:Lcom/mob/mcl/c/f;

    invoke-direct {p1, v4, v6}, Lcom/mob/mcl/c/a;-><init>(Ljava/net/Socket;Lcom/mob/mcl/c/f;)V

    iput-object p1, v0, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    .line 37
    iput-object v2, p1, Lcom/mob/mcl/c/a;->c:Ljava/net/SocketAddress;

    .line 38
    :goto_2
    iget-object p1, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/16 p1, 0x3e9

    .line 39
    iget-object v0, p0, Lcom/mob/mcl/c/i;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 41
    :cond_3
    iget-wide v8, p0, Lcom/mob/mcl/c/i;->a:J

    .line 42
    iget-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    cmp-long v2, v8, v6

    if-nez v2, :cond_4

    .line 43
    iget-object v2, v0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v8

    .line 45
    :cond_4
    iget-object v0, v0, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    if-eqz v0, :cond_8

    .line 46
    new-instance v2, Lcom/mob/mcl/c/e;

    invoke-direct {v2}, Lcom/mob/mcl/c/e;-><init>()V

    .line 47
    iget-object v4, v0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    monitor-enter v4

    .line 48
    :try_start_0
    iget-object v6, v0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    iget-object v4, v0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    add-int/lit8 v6, v3, 0x11

    .line 52
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 53
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v6, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_5

    const-string p1, "UTF-8"

    .line 58
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    :cond_5
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 61
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 62
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 65
    iget-object p2, v0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    check-cast p2, Lcom/mob/mcl/c/i;

    if-eqz p2, :cond_7

    .line 66
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_3
    int-to-long p1, p3

    .line 67
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Lcom/mob/mcl/c/e;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/g;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 68
    iget p2, p1, Lcom/mob/mcl/c/g;->b:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_6

    .line 69
    iget-object p2, p0, Lcom/mob/mcl/c/i;->b:Ljava/lang/String;

    iget-object p3, p1, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    .line 70
    invoke-direct {p0, p2}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 72
    :cond_6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tp rp : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 73
    :cond_7
    throw v1

    :catchall_1
    move-exception p1

    .line 74
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 75
    :cond_8
    throw v1

    :cond_9
    :goto_4
    return-object v1
.end method

.method public a()V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/mob/mcl/c/i;->k:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_3

    .line 177
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/mob/mcl/d/d;->d()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mob/mcl/c/i;->k:J

    .line 179
    iget-object v0, p0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    .line 182
    :cond_1
    iget-wide v3, p0, Lcom/mob/mcl/c/i;->k:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/mcl/c/i;->k:J

    .line 185
    :cond_2
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mob/mcl/c/i;->k:J

    monitor-enter v0

    .line 186
    :try_start_0
    iput-object v1, v0, Lcom/mob/mcl/c/i;->j:Ljava/lang/String;

    .line 187
    iput-wide v2, v0, Lcom/mob/mcl/c/i;->k:J

    .line 188
    invoke-static {v1}, Lcom/mob/mcl/d/d;->b(Ljava/lang/String;)V

    .line 189
    iget-wide v1, v0, Lcom/mob/mcl/c/i;->k:J

    invoke-static {v1, v2}, Lcom/mob/mcl/d/d;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public a(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 2

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/mob/mcl/c/i;->t:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/i;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/mob/mcl/c/i;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/mob/mcl/c/i;->t:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mob/mcl/c/i;->r:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/mob/mcl/c/i;->p:Ljava/lang/String;

    .line 19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 20
    iput-object p3, p0, Lcom/mob/mcl/c/i;->q:Ljava/lang/String;

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->a()V

    .line 23
    invoke-static {p1}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/mob/mcl/b/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/mob/mcl/c/i$a;

    invoke-direct {v1, p0, p1}, Lcom/mob/mcl/c/i$a;-><init>(Lcom/mob/mcl/c/i;Lcom/mob/mcl/BusinessCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/MCLSDK$ELPMessageListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mob/mcl/c/i;->s:Lcom/mob/mcl/MCLSDK$ELPMessageListener;

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;)V
    .locals 1

    .line 312
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string v0, "sessionOpened"

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Lcom/mob/mcl/c/g;)V
    .locals 11

    const-string p1, "targetPackage"

    const-string v0, "workId"

    const-string v1, "expire"

    .line 190
    :try_start_0
    iget-object v2, p2, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 194
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string p2, "tcp received push msg, but send token is 0"

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/mob/mcl/c/i;->a(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    .line 198
    iget v3, p2, Lcom/mob/mcl/c/g;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x2329

    const-string v5, "uniqueId"

    const/4 v6, 0x0

    const-string v7, "data"

    const/4 v8, 0x1

    if-ne v3, v4, :cond_7

    .line 199
    :try_start_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tcp msg push msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/mob/mcl/c/g;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " body = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 200
    iget-wide v2, p2, Lcom/mob/mcl/c/g;->c:J

    invoke-direct {p0, v2, v3}, Lcom/mob/mcl/c/i;->b(J)V

    .line 201
    iget-object p1, p2, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 202
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 203
    invoke-static {p1, v1, v6}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v2

    .line 204
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "needRepeat"

    .line 206
    invoke-static {p1, v9, v6}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v8, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    const-string v10, "type"

    .line 207
    invoke-static {p1, v10, v6}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v8, :cond_4

    const/4 v10, 0x2

    if-ne p1, v10, :cond_3

    goto :goto_1

    .line 221
    :cond_3
    invoke-virtual {p0, v3, v2, p1, v4}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz v9, :cond_a

    .line 223
    iget-wide v0, p2, Lcom/mob/mcl/c/g;->c:J

    invoke-direct {p0, v0, v1, p1}, Lcom/mob/mcl/c/i;->b(JZ)V

    goto/16 :goto_2

    .line 224
    :cond_4
    :goto_1
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 225
    invoke-virtual {v10, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    invoke-virtual {v10, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-wide v0, p2, Lcom/mob/mcl/c/g;->c:J

    invoke-virtual {v10, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "msgType"

    .line 229
    invoke-virtual {v10, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    invoke-virtual {p0, v10}, Lcom/mob/mcl/c/i;->a(Landroid/os/Bundle;)I

    move-result p1

    if-ne p1, v8, :cond_5

    const/4 v6, 0x1

    :cond_5
    if-eqz v9, :cond_6

    .line 232
    iget-wide p1, p2, Lcom/mob/mcl/c/g;->c:J

    invoke-direct {p0, p1, p2, v6}, Lcom/mob/mcl/c/i;->b(JZ)V

    :cond_6
    return-void

    .line 243
    :cond_7
    iget v0, p2, Lcom/mob/mcl/c/g;->b:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_8

    .line 244
    invoke-direct {p0, v2}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "domain"

    .line 245
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 246
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 247
    iput-boolean v8, p0, Lcom/mob/mcl/c/i;->l:Z

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 248
    invoke-direct {p0}, Lcom/mob/mcl/c/i;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1388

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mob/mcl/c/i;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    goto/16 :goto_2

    .line 250
    :cond_8
    iget v0, p2, Lcom/mob/mcl/c/g;->b:I

    const/16 v1, 0x232c

    if-ne v0, v1, :cond_a

    .line 251
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tp mg ty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/mob/mcl/c/g;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 252
    iget-wide v2, p2, Lcom/mob/mcl/c/g;->c:J

    invoke-direct {p0, v2, v3}, Lcom/mob/mcl/c/i;->b(J)V

    .line 253
    iget-object v0, p2, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mob/mcl/c/i;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 255
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "logicTimeout"

    const/16 v4, 0x3e8

    .line 257
    invoke-static {v0, v3, v4}, Lcom/mob/mcl/c/i;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    .line 258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 259
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 260
    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-wide v9, p2, Lcom/mob/mcl/c/g;->c:J

    invoke-virtual {v3, v5, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 262
    invoke-static {}, Lcom/mob/mcl/a/b;->a()Lcom/mob/mcl/a/b;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p1, v0}, Lcom/mob/mcl/a/b;->a(ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/mob/apc/APCMessage;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 264
    iget-object p1, p1, Lcom/mob/apc/APCMessage;->data:Landroid/os/Bundle;

    if-eqz p1, :cond_9

    .line 265
    iget-wide p1, p2, Lcom/mob/mcl/c/g;->c:J

    invoke-direct {p0, p1, p2, v8}, Lcom/mob/mcl/c/i;->a(JZ)V

    goto :goto_2

    .line 267
    :cond_9
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string v0, "apc fw rp mg is null"

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 268
    iget-wide p1, p2, Lcom/mob/mcl/c/g;->c:J

    invoke-direct {p0, p1, p2, v6}, Lcom/mob/mcl/c/i;->a(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 274
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/i;->v:Lcom/mob/mcl/d/c;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)Z
    .locals 8

    .line 143
    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 144
    iget-boolean v3, p0, Lcom/mob/mcl/c/i;->l:Z

    iget-object v0, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/mcl/c/i;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/mob/mcl/c/i;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public a(II)Z
    .locals 2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_3

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, p1, v1}, Lcom/mob/mcl/c/i;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    const/16 p1, 0xbb8

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/i;->a(II)Z

    goto :goto_1

    :cond_1
    :goto_0
    add-int/2addr p2, v0

    const/16 p1, 0x3e8

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/i;->a(II)Z

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 290
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 293
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 294
    iget-object p3, p0, Lcom/mob/mcl/c/i;->t:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 295
    iget-object p3, p0, Lcom/mob/mcl/c/i;->t:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashSet;

    .line 296
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 297
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/mob/mcl/BusinessMessageListener;

    .line 299
    new-instance v7, Lcom/mob/mcl/c/i$b;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/i$b;-><init>(Lcom/mob/mcl/c/i;Lcom/mob/mcl/BusinessMessageListener;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 311
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1
    iget-object v3, p0, Lcom/mob/mcl/c/i;->p:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/mob/mcl/c/i;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "%16s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "0"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized f()Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/i;->o:Lcom/mob/mcl/c/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mob/mcl/c/i;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/i;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/mcl/c/i;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mob/mcl/c/i;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mob/mcl/c/i;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/mcl/c/i;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/i;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/i;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/i;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/mob/mcl/b/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/i;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mob/mcl/c/i;->r:Landroid/content/Context;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "requestTimes"

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/mob/mcl/c/i;->n:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 14
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v3

    invoke-direct {v3, v1}, Lcom/mob/mcl/c/i;->b(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/mob/mcl/d/d;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cf cc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v8}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v0, 0x2710

    .line 23
    iput v0, v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v0, 0x1388

    .line 24
    iput v0, v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 26
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v0, Lcom/mob/tools/network/KVPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "appkey"

    :try_start_1
    iget-object v3, p0, Lcom/mob/mcl/c/i;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcom/mob/tools/network/KVPair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "pushId"

    :try_start_2
    invoke-direct {p0}, Lcom/mob/mcl/c/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "http://m.mpl.dutils.com/tcp/config/init"

    .line 29
    invoke-static {v0}, Lcom/mob/MobSDK;->checkRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v3, p0, Lcom/mob/mcl/c/i;->m:Lcom/mob/tools/network/NetworkHelper;

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp cf url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> rp : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/mob/mcl/c/i;->n:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-direct {v1, v0}, Lcom/mob/mcl/c/i;->b(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 35
    invoke-static {v1}, Lcom/mob/mcl/d/d;->a(Z)V

    .line 36
    iget-object v1, p0, Lcom/mob/mcl/c/i;->n:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/mcl/d/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 39
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 40
    :cond_4
    :goto_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "mcl has not been initialized"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/mob/mcl/c/i;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3eb

    const/16 v2, 0x2710

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lcom/mob/mcl/c/i;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/mob/mcl/c/i;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/mcl/c/i;->w:J

    .line 3
    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/mob/mcl/b/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/mob/mcl/c/k;

    invoke-direct {v1, p0}, Lcom/mob/mcl/c/k;-><init>(Lcom/mob/mcl/c/i;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/mob/mcl/c/i;->x:Landroid/app/Activity;

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/i;->x:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_2

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/mob/mcl/c/i;->w:J

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/mob/mcl/c/i;->x:Landroid/app/Activity;

    .line 4
    invoke-virtual {p0}, Lcom/mob/mcl/c/i;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/mob/mcl/b/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/mob/mcl/c/k;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/k;-><init>(Lcom/mob/mcl/c/i;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-interface {p1, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    :goto_0
    return-void
.end method
