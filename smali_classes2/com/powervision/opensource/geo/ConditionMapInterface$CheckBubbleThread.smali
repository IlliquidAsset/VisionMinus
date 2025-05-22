.class Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;
.super Ljava/lang/Thread;
.source "ConditionMapInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/opensource/geo/ConditionMapInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckBubbleThread"
.end annotation


# instance fields
.field commonCallBack:Lcom/powervision/opensource/CommonCallBack;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 554
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 555
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/powervision/opensource/CommonCallBack;->success([Ljava/lang/Object;)V

    return-void
.end method

.method public setCommonCallBack(Lcom/powervision/opensource/CommonCallBack;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$CheckBubbleThread;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    return-void
.end method
