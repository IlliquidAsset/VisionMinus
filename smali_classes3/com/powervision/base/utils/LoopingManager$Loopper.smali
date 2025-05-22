.class Lcom/powervision/base/utils/LoopingManager$Loopper;
.super Ljava/lang/Thread;
.source "LoopingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/LoopingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loopper"
.end annotation


# instance fields
.field commonCallBack:Lcom/powervision/opensource/CommonCallBack;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/utils/LoopingManager$1;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/powervision/base/utils/LoopingManager$Loopper;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 138
    iget-object v0, p0, Lcom/powervision/base/utils/LoopingManager$Loopper;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    invoke-interface {v0, v1}, Lcom/powervision/opensource/CommonCallBack;->success([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCommonCallBack(Lcom/powervision/opensource/CommonCallBack;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/powervision/base/utils/LoopingManager$Loopper;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    return-void
.end method
