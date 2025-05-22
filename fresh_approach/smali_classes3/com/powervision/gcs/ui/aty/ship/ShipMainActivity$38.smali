.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$38;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->initViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 4456
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$38;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(F)V
    .locals 1

    .line 4459
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$38;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onCameraChange(F)V

    return-void
.end method

.method public onCameraChangeFinish(ZF)V
    .locals 1

    .line 4464
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$38;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onCameraChangeFinish(ZF)V

    return-void
.end method
