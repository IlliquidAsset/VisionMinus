.class public abstract Lcom/mob/commons/b/f;
.super Ljava/lang/Object;
.source "IdSupplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/f$c;,
        Lcom/mob/commons/b/f$a;,
        Lcom/mob/commons/b/f$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/mob/commons/b/f;->c:Z

    .line 24
    iput-boolean v0, p0, Lcom/mob/commons/b/f;->d:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/mob/commons/b/f;->e:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/mob/commons/b/f;->f:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/mob/commons/b/f;->g:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/mob/commons/b/f;->h:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/mob/commons/b/f;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/b/f;->b:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Intent;)J
    .locals 4

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->c()Lcom/mob/commons/b/f$c;

    move-result-object v2

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/mob/commons/b/f;->a:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/mob/commons/b/f;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/mob/commons/b/f$c;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 84
    iget-boolean p1, v2, Lcom/mob/commons/b/f$c;->a:Z

    iput-boolean p1, p0, Lcom/mob/commons/b/f;->d:Z

    .line 85
    iget-object p1, v2, Lcom/mob/commons/b/f$c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/f;->e:Ljava/lang/String;

    .line 86
    iget-object p1, v2, Lcom/mob/commons/b/f$c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/f;->f:Ljava/lang/String;

    .line 87
    iget-object p1, v2, Lcom/mob/commons/b/f$c;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/f;->g:Ljava/lang/String;

    .line 88
    iget-object p1, v2, Lcom/mob/commons/b/f$c;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/f;->h:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 91
    :try_start_2
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    .line 93
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 94
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    monitor-exit p0

    return-wide v2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Lcom/mob/commons/b/f$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 183
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 186
    new-instance v0, Lcom/mob/commons/b/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/commons/b/f$b;-><init>(Lcom/mob/commons/b/f;Lcom/mob/commons/b/f$1;)V

    const-string v1, " failed!"

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    .line 188
    :try_start_0
    invoke-virtual {p1, p2, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mob/commons/b/f$b;->a(J)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0, v2}, Lcom/mob/commons/b/f;->a(Landroid/os/IBinder;)Lcom/mob/commons/b/f$c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 202
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-object p2

    .line 193
    :cond_0
    :try_start_2
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get binder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_1
    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string p2, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    :goto_1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 200
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 202
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    .line 203
    :goto_2
    throw p2

    .line 184
    :cond_3
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "unable to invoke in main thread!"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized j()J
    .locals 3

    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/mob/commons/b/f;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 69
    monitor-exit p0

    return-wide v0

    .line 71
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/commons/b/f;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/commons/b/f;->a(Landroid/content/Intent;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 72
    iput-boolean v2, p0, Lcom/mob/commons/b/f;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 158
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 159
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-interface {p2, p4, v2, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 168
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_0
    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    return p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-object p2, v1

    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-object p2, v1

    .line 164
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntValue: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed! (remoteException)"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz p2, :cond_2

    .line 168
    :try_start_4
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    :cond_2
    if-eqz v1, :cond_3

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_3
    return v0

    :catchall_4
    move-exception p1

    move-object v2, v1

    move-object v1, p2

    :goto_1
    if-eqz v1, :cond_4

    .line 168
    :try_start_5
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v2, :cond_5

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 173
    :catchall_5
    :cond_5
    throw p1
.end method

.method protected a()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/f$c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected varargs a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 127
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 128
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 129
    :try_start_2
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    .line 130
    array-length v3, p5

    if-lez v3, :cond_0

    .line 131
    array-length v3, p5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p5, v4

    .line 132
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {p2, p4, v1, v2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 136
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 137
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 143
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_1
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_2
    return-object p1

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v2, v0

    goto :goto_1

    :catchall_3
    move-exception p2

    move-object v1, v0

    move-object v2, v1

    .line 139
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getStringValue: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed! "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_3

    .line 143
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    if-eqz v1, :cond_4

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_4
    return-object v0

    :catchall_5
    move-exception p1

    if-eqz v2, :cond_5

    .line 143
    :try_start_6
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_5
    if-eqz v1, :cond_6

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 148
    :catchall_6
    :cond_6
    throw p1
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 52
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/f;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/f;->j()J

    .line 100
    iget-object v0, p0, Lcom/mob/commons/b/f;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 56
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/f;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected c()Lcom/mob/commons/b/f$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 64
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/f;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected d()J
    .locals 2

    const-wide/16 v0, 0x9c4

    return-wide v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/f;->j()J

    .line 105
    iget-object v0, p0, Lcom/mob/commons/b/f;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/f;->j()J

    .line 110
    iget-object v0, p0, Lcom/mob/commons/b/f;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/f;->j()J

    .line 115
    iget-object v0, p0, Lcom/mob/commons/b/f;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/f;->j()J

    .line 120
    iget-boolean v0, p0, Lcom/mob/commons/b/f;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected i()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/mob/commons/b/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x1008611"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/commons/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0xdzfdweiwu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
