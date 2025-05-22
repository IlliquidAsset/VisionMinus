.class public abstract Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "SMSSDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/SMSSDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallbackWrapper"
.end annotation


# static fields
.field private static final CALLBACKS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->CALLBACKS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;

    invoke-direct {v0, p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;-><init>(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V

    iput-object v0, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->handler:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->registerEventHandler()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->unregisterEventHandler()V

    return-void
.end method

.method static synthetic access$200(I)V
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->broadcastNotAvailable(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)Ljava/lang/Object;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->handler:Ljava/lang/Object;

    return-object p0
.end method

.method private static broadcastNotAvailable(I)V
    .locals 5

    .line 154
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "SMSSDK is not available"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->CALLBACKS:Ljava/util/HashSet;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v2, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->CALLBACKS:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;

    const/4 v4, 0x0

    .line 157
    invoke-virtual {v3, p0, v4, v0}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->afterEvent(IILjava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private registerEventHandler()V
    .locals 2

    .line 134
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->handler:Ljava/lang/Object;

    check-cast v0, Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->CALLBACKS:Ljava/util/HashSet;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->CALLBACKS:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterEventHandler()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/mob/wrappers/SMSSDKWrapper;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->handler:Ljava/lang/Object;

    check-cast v0, Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->CALLBACKS:Ljava/util/HashSet;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->CALLBACKS:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract afterEvent(IILjava/lang/Object;)V
.end method
