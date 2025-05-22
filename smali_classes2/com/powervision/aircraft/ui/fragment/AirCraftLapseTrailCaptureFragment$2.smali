.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$2;
.super Ljava/lang/Object;
.source "AirCraftLapseTrailCaptureFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/powervision/aircraft/lapse/data/NedPositionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/powervision/aircraft/lapse/data/NedPositionInfo;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$102(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;Lcom/powervision/aircraft/lapse/data/NedPositionInfo;)Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 256
    check-cast p1, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$2;->onChanged(Lcom/powervision/aircraft/lapse/data/NedPositionInfo;)V

    return-void
.end method
