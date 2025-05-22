.class Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "PointSurroundFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartSurroundHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;)V
    .locals 0

    .line 456
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;Landroid/os/Message;)V
    .locals 0

    .line 461
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 453
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$SmartSurroundHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;Landroid/os/Message;)V

    return-void
.end method
