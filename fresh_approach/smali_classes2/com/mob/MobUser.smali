.class public final Lcom/mob/MobUser;
.super Ljava/lang/Object;
.source "MobUser.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/MobUser$UserWatcher;,
        Lcom/mob/MobUser$OnUserGotListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mob/MobCommunicator;

.field private static c:Landroid/os/Handler;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/mob/MobUser;


# instance fields
.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mob/MobUser$UserWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "http://api.u.mob.com"

    .line 25
    invoke-static {v0}, Lcom/mob/commons/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/MobUser;->a:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/mob/MobCommunicator;

    const/16 v1, 0x400

    const-string v2, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b671a8ca5d78efede48e291a3f"

    const-string v3, "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1"

    invoke-direct {v0, v1, v2, v3}, Lcom/mob/MobCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/MobUser;->b:Lcom/mob/MobCommunicator;

    .line 57
    new-instance v0, Lcom/mob/MobUser$1;

    invoke-direct {v0}, Lcom/mob/MobUser$1;-><init>()V

    const-string v1, "m"

    invoke-static {v1, v0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/mob/MobUser;->c:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/mob/MobUser;

    invoke-direct {v0}, Lcom/mob/MobUser;-><init>()V

    sput-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/MobUser;->n:Ljava/util/HashSet;

    return-void
.end method

.method static a([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appUserIds"

    .line 246
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appkey"

    .line 247
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object p0, Lcom/mob/MobUser;->b:Lcom/mob/MobCommunicator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mob/MobUser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/exchange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 251
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a()V
    .locals 2

    .line 99
    sget-object v0, Lcom/mob/MobUser;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static a(Lcom/mob/MobUser$OnUserGotListener;)V
    .locals 2

    .line 92
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 93
    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    sget-object p0, Lcom/mob/MobUser;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static a(Lcom/mob/MobUser$UserWatcher;)V
    .locals 2

    .line 297
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->n:Ljava/util/HashSet;

    monitor-enter v0

    .line 298
    :try_start_0
    sget-object v1, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v1, v1, Lcom/mob/MobUser;->n:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 86
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v1

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const/4 p0, 0x4

    aput-object p4, v2, p0

    .line 87
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    sget-object p0, Lcom/mob/MobUser;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v1, v0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 171
    iput-object p0, v0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    .line 172
    iput-object p1, v0, Lcom/mob/MobUser;->i:Ljava/lang/String;

    .line 173
    iput-object p2, v0, Lcom/mob/MobUser;->j:Ljava/util/HashMap;

    goto/16 :goto_4

    .line 174
    :cond_0
    invoke-direct {v0}, Lcom/mob/MobUser;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v1, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    invoke-static {v1, p0, p1, p2, v0}, Lcom/mob/MobUser;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 177
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    sget-object v1, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v1, v1, Lcom/mob/MobUser;->l:Ljava/lang/String;

    const-string v2, "mobUserId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const-string v3, "nickname"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p1

    :goto_1
    const-string v1, "avatar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_4
    move-object v1, p2

    :goto_2
    const-string v2, "appUserMap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    .line 184
    sget-object v1, Lcom/mob/MobUser;->b:Lcom/mob/MobCommunicator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/MobUser;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/modify"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object p0, v0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    .line 186
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object p1, p0, Lcom/mob/MobUser;->i:Ljava/lang/String;

    .line 187
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object p2, p0, Lcom/mob/MobUser;->j:Ljava/util/HashMap;

    .line 189
    :cond_5
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object p0, p0, Lcom/mob/MobUser;->n:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/MobUser$UserWatcher;

    .line 190
    sget-object p2, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    invoke-interface {p1, p2}, Lcom/mob/MobUser$UserWatcher;->onUserStateChange(Lcom/mob/MobUser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 193
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    return-void
.end method

.method static synthetic b()V
    .locals 0

    .line 24
    invoke-static {}, Lcom/mob/MobUser;->e()V

    return-void
.end method

.method static synthetic b(Lcom/mob/MobUser$OnUserGotListener;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/mob/MobUser;->c(Lcom/mob/MobUser$OnUserGotListener;)V

    return-void
.end method

.method static b(Lcom/mob/MobUser$UserWatcher;)V
    .locals 2

    .line 303
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->n:Ljava/util/HashSet;

    monitor-enter v0

    .line 304
    :try_start_0
    sget-object v1, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v1, v1, Lcom/mob/MobUser;->n:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 305
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mob/MobUser;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()Lcom/mob/MobUser;
    .locals 1

    .line 24
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    return-object v0
.end method

.method private static c(Lcom/mob/MobUser$OnUserGotListener;)V
    .locals 5

    .line 199
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v1, v0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/mob/MobUser;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v1, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    iget-object v2, v0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    iget-object v3, v0, Lcom/mob/MobUser;->i:Ljava/lang/String;

    iget-object v4, v0, Lcom/mob/MobUser;->j:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/mob/MobUser;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 203
    new-instance v1, Lcom/mob/MobUser$2;

    invoke-direct {v1, p0}, Lcom/mob/MobUser$2;-><init>(Lcom/mob/MobUser$OnUserGotListener;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_2
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v1, v0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lcom/mob/MobUser;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/mob/MobUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mob/MobUser;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .line 105
    sget-object v0, Lcom/mob/MobUser;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getProducts()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/commons/MobProduct;

    :goto_0
    invoke-static {v0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/MobUser;->d:Ljava/lang/String;

    .line 109
    :cond_1
    sget-object v0, Lcom/mob/MobUser;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/mob/MobUser;->e()V

    .line 127
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getProducts()Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/commons/MobProduct;

    .line 131
    invoke-interface {v3}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "sdks"

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "appUserId"

    .line 135
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    const-string v3, "nickname"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p2

    :goto_2
    const-string v1, "avatar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_5

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_3

    :cond_5
    move-object v1, p3

    :goto_3
    const-string v2, "appUserMap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/mob/MobUser;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "sign"

    .line 143
    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    .line 147
    sget-object v1, Lcom/mob/MobUser;->b:Lcom/mob/MobCommunicator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/MobUser;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/login"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "mobUserId"

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "loginExpireAt"

    .line 149
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 150
    invoke-static {}, Lcom/mob/commons/b;->a()J

    .line 152
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object p0, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/mob/MobUser;->f:Z

    .line 154
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object p1, p0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    .line 155
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object p2, p0, Lcom/mob/MobUser;->i:Ljava/lang/String;

    .line 156
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object p3, p0, Lcom/mob/MobUser;->j:Ljava/util/HashMap;

    .line 157
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object p4, p0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    .line 158
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-object v1, p0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    .line 159
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iput-wide v2, p0, Lcom/mob/MobUser;->m:J

    .line 161
    :cond_7
    sget-object p0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object p0, p0, Lcom/mob/MobUser;->n:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/MobUser$UserWatcher;

    .line 162
    sget-object p2, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    invoke-interface {p1, p2}, Lcom/mob/MobUser$UserWatcher;->onUserStateChange(Lcom/mob/MobUser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 165
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_8
    return-void
.end method

.method private static e()V
    .locals 8

    .line 214
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v0, v0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    sget-object v2, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v2, v2, Lcom/mob/MobUser;->l:Ljava/lang/String;

    const-string v3, "mobUserId"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :try_start_0
    sget-object v2, Lcom/mob/MobUser;->b:Lcom/mob/MobCommunicator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mob/MobUser;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/logout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 220
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 223
    :cond_0
    :goto_0
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    iget-object v2, v0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/mob/MobUser;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/mob/MobUser;->j:Ljava/util/HashMap;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/mob/MobUser;->f:Z

    if-eqz v2, :cond_1

    iget-wide v6, v0, Lcom/mob/MobUser;->m:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 226
    :cond_2
    sget-object v0, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    .line 227
    iput-object v2, v0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    .line 228
    iput-object v2, v0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    .line 229
    iput-object v2, v0, Lcom/mob/MobUser;->i:Ljava/lang/String;

    .line 230
    iput-object v2, v0, Lcom/mob/MobUser;->j:Ljava/util/HashMap;

    .line 231
    iput-object v2, v0, Lcom/mob/MobUser;->k:Ljava/lang/String;

    .line 232
    iput-boolean v5, v0, Lcom/mob/MobUser;->f:Z

    .line 233
    iput-wide v3, v0, Lcom/mob/MobUser;->m:J

    if-eqz v1, :cond_3

    .line 236
    iget-object v0, v0, Lcom/mob/MobUser;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/MobUser$UserWatcher;

    .line 237
    sget-object v2, Lcom/mob/MobUser;->e:Lcom/mob/MobUser;

    invoke-interface {v1, v2}, Lcom/mob/MobUser$UserWatcher;->onUserStateChange(Lcom/mob/MobUser;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private f()Z
    .locals 5

    .line 263
    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v0

    .line 264
    iget-wide v2, p0, Lcom/mob/MobUser;->m:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/mob/MobUser;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/mob/MobUser;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/mob/MobUser;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getMobUserId()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/mob/MobUser;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/mob/MobUser;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/mob/MobUser;->f:Z

    return v0
.end method
