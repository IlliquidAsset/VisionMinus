.class Lcom/powervision/aircraft/ui/views/CameraMenuView$6;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;->initLiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$6;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Double;)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$6;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1302(Lcom/powervision/aircraft/ui/views/CameraMenuView;D)D

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 371
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$6;->onChanged(Ljava/lang/Double;)V

    return-void
.end method
