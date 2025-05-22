.class public Lcom/mob/wrappers/PaySDKWrapper;
.super Lcom/mob/wrappers/SDKWrapper;
.source "PaySDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;,
        Lcom/mob/wrappers/PaySDKWrapper$PayOrder;,
        Lcom/mob/wrappers/PaySDKWrapper$Order;,
        Lcom/mob/wrappers/PaySDKWrapper$PayCallback;,
        Lcom/mob/wrappers/PaySDKWrapper$UnsupportedPayPlatform;,
        Lcom/mob/wrappers/PaySDKWrapper$UnknowOrder;,
        Lcom/mob/wrappers/PaySDKWrapper$LinkagePaySDKError;
    }
.end annotation


# static fields
.field private static state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mob/wrappers/SDKWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized isAvailable()Z
    .locals 3

    const-class v0, Lcom/mob/wrappers/PaySDKWrapper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget v1, Lcom/mob/wrappers/PaySDKWrapper;->state:I

    if-nez v1, :cond_0

    const-string v1, "PAYSDK"

    .line 25
    invoke-static {v1}, Lcom/mob/wrappers/PaySDKWrapper;->isAvailable(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mob/wrappers/PaySDKWrapper;->state:I

    .line 27
    :cond_0
    sget v1, Lcom/mob/wrappers/PaySDKWrapper;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static pay(Lcom/mob/wrappers/PaySDKWrapper$Order;ILcom/mob/wrappers/PaySDKWrapper$PayCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/wrappers/PaySDKWrapper$LinkagePaySDKError;,
            Lcom/mob/wrappers/PaySDKWrapper$UnknowOrder;,
            Lcom/mob/wrappers/PaySDKWrapper$UnsupportedPayPlatform;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    instance-of v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;

    invoke-static {v0}, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->access$000(Lcom/mob/wrappers/PaySDKWrapper$PayOrder;)Lcom/mob/paysdk/PayOrder;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    instance-of v0, p0, Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;

    if-eqz v0, :cond_3

    .line 66
    move-object v0, p0

    check-cast v0, Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;

    invoke-static {v0}, Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;->access$100(Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;)Lcom/mob/paysdk/TicketOrder;

    move-result-object v0

    :goto_0
    const/16 v1, 0x32

    if-ne v1, p1, :cond_1

    .line 73
    const-class v1, Lcom/mob/paysdk/AliPayAPI;

    goto :goto_1

    :cond_1
    const/16 v1, 0x16

    if-ne v1, p1, :cond_2

    .line 75
    const-class v1, Lcom/mob/paysdk/WXPayAPI;

    .line 80
    :goto_1
    invoke-static {v1}, Lcom/mob/paysdk/PaySDK;->createMobPayAPI(Ljava/lang/Class;)Lcom/mob/paysdk/MobPayAPI;

    move-result-object v1

    .line 81
    new-instance v2, Lcom/mob/wrappers/PaySDKWrapper$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/mob/wrappers/PaySDKWrapper$1;-><init>(Lcom/mob/wrappers/PaySDKWrapper$PayCallback;Lcom/mob/wrappers/PaySDKWrapper$Order;I)V

    invoke-virtual {v1, v0, v2}, Lcom/mob/paysdk/MobPayAPI;->pay(Lcom/mob/paysdk/Order;Lcom/mob/paysdk/OnPayListener;)V

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_2
    new-instance p0, Lcom/mob/wrappers/PaySDKWrapper$UnsupportedPayPlatform;

    invoke-direct {p0}, Lcom/mob/wrappers/PaySDKWrapper$UnsupportedPayPlatform;-><init>()V

    throw p0

    .line 68
    :cond_3
    new-instance p0, Lcom/mob/wrappers/PaySDKWrapper$UnknowOrder;

    invoke-direct {p0}, Lcom/mob/wrappers/PaySDKWrapper$UnknowOrder;-><init>()V

    throw p0

    .line 60
    :cond_4
    new-instance p0, Lcom/mob/wrappers/PaySDKWrapper$LinkagePaySDKError;

    invoke-direct {p0}, Lcom/mob/wrappers/PaySDKWrapper$LinkagePaySDKError;-><init>()V

    throw p0
.end method
