.class public Lcn/sharesdk/loopshare/utils/a;
.super Ljava/lang/Object;
.source "AppStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/loopshare/utils/a$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcn/sharesdk/loopshare/utils/a;


# instance fields
.field public a:I

.field private c:I

.field private d:I

.field private e:Lcom/mob/tools/utils/ActivityTracker$Tracker;

.field private f:Lcn/sharesdk/loopshare/utils/a$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcn/sharesdk/loopshare/utils/a;->c:I

    .line 34
    iput v0, p0, Lcn/sharesdk/loopshare/utils/a;->d:I

    .line 86
    new-instance v0, Lcn/sharesdk/loopshare/utils/a$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/loopshare/utils/a$1;-><init>(Lcn/sharesdk/loopshare/utils/a;)V

    iput-object v0, p0, Lcn/sharesdk/loopshare/utils/a;->e:Lcom/mob/tools/utils/ActivityTracker$Tracker;

    .line 145
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/a;->e:Lcom/mob/tools/utils/ActivityTracker$Tracker;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/a;)Lcn/sharesdk/loopshare/utils/a$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/loopshare/utils/a;->f:Lcn/sharesdk/loopshare/utils/a$a;

    return-object p0
.end method

.method public static a()Lcn/sharesdk/loopshare/utils/a;
    .locals 2

    .line 149
    sget-object v0, Lcn/sharesdk/loopshare/utils/a;->b:Lcn/sharesdk/loopshare/utils/a;

    if-nez v0, :cond_1

    .line 150
    const-class v0, Lcn/sharesdk/loopshare/utils/a;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcn/sharesdk/loopshare/utils/a;->b:Lcn/sharesdk/loopshare/utils/a;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lcn/sharesdk/loopshare/utils/a;

    invoke-direct {v1}, Lcn/sharesdk/loopshare/utils/a;-><init>()V

    sput-object v1, Lcn/sharesdk/loopshare/utils/a;->b:Lcn/sharesdk/loopshare/utils/a;

    .line 154
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 156
    :cond_1
    :goto_0
    sget-object v0, Lcn/sharesdk/loopshare/utils/a;->b:Lcn/sharesdk/loopshare/utils/a;

    return-object v0
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/a;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/a;->b(Z)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v3, "activity"

    .line 225
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 226
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 228
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 229
    iget p1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 234
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method

.method private b(Z)V
    .locals 3

    .line 186
    iget v0, p0, Lcn/sharesdk/loopshare/utils/a;->d:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 187
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/a;->a(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v1

    xor-int/lit8 v0, p1, 0x1

    .line 188
    iput v0, p0, Lcn/sharesdk/loopshare/utils/a;->d:I

    .line 189
    invoke-virtual {p0, p1}, Lcn/sharesdk/loopshare/utils/a;->a(Z)V

    goto :goto_1

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_2

    .line 193
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/loopshare/utils/a;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eq p1, v0, :cond_2

    .line 195
    iput p1, p0, Lcn/sharesdk/loopshare/utils/a;->d:I

    .line 196
    invoke-virtual {p0, v0}, Lcn/sharesdk/loopshare/utils/a;->a(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private d()V
    .locals 1

    .line 175
    invoke-static {}, Lcn/sharesdk/loopshare/utils/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcn/sharesdk/loopshare/utils/a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 179
    iput v0, p0, Lcn/sharesdk/loopshare/utils/a;->c:I

    .line 180
    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/i;->a(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/loopshare/utils/a$a;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/a;->f:Lcn/sharesdk/loopshare/utils/a$a;

    return-void
.end method

.method protected a(Z)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/a;->f:Lcn/sharesdk/loopshare/utils/a$a;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcn/sharesdk/loopshare/utils/a$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 164
    iget v0, p0, Lcn/sharesdk/loopshare/utils/a;->c:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget v0, p0, Lcn/sharesdk/loopshare/utils/a;->c:I

    if-ne v1, v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/a;->d()V

    .line 169
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 171
    :cond_1
    :goto_0
    iget v0, p0, Lcn/sharesdk/loopshare/utils/a;->c:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public c()I
    .locals 3

    .line 244
    iget v0, p0, Lcn/sharesdk/loopshare/utils/a;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcn/sharesdk/loopshare/utils/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 251
    :goto_0
    iput v0, p0, Lcn/sharesdk/loopshare/utils/a;->a:I

    goto :goto_1

    :cond_1
    if-eq v2, v0, :cond_2

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    .line 253
    iput v0, p0, Lcn/sharesdk/loopshare/utils/a;->a:I

    :cond_3
    :goto_1
    return v0
.end method
