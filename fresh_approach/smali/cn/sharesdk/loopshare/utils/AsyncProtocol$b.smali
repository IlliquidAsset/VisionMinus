.class Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;
.super Ljava/lang/Object;
.source "AsyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/loopshare/utils/AsyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 122
    iput v0, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->a:I

    .line 127
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->d:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->b:I

    .line 129
    iput p3, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->c:I

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 165
    iget v0, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->a:I

    if-lez v0, :cond_0

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x7530

    .line 166
    new-instance v3, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$3;

    invoke-direct {v3, p0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$3;-><init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)V

    invoke-static {v0, v1, v2, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 133
    iget v0, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 134
    iput v0, p0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;->a:I

    .line 135
    new-instance v0, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$1;-><init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 143
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 144
    new-instance v1, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/loopshare/utils/AsyncProtocol$b$2;-><init>(Lcn/sharesdk/loopshare/utils/AsyncProtocol$b;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    :cond_0
    return-void
.end method
