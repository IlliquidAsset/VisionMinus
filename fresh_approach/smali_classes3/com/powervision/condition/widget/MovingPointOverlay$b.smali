.class Lcom/powervision/condition/widget/MovingPointOverlay$b;
.super Ljava/lang/Object;
.source "MovingPointOverlay.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/condition/widget/MovingPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/widget/MovingPointOverlay;


# direct methods
.method private constructor <init>(Lcom/powervision/condition/widget/MovingPointOverlay;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/powervision/condition/widget/MovingPointOverlay$b;->this$0:Lcom/powervision/condition/widget/MovingPointOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/condition/widget/MovingPointOverlay;Lcom/powervision/condition/widget/MovingPointOverlay$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/powervision/condition/widget/MovingPointOverlay$b;-><init>(Lcom/powervision/condition/widget/MovingPointOverlay;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MoveSmoothThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
