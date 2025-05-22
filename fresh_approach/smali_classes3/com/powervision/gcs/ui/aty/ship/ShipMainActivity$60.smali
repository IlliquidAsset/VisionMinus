.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$60;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/SlideReturnView$SlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setSlideReturnListener()V
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

    .line 7677
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$60;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelReturnSlide()V
    .locals 2

    .line 7681
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$60;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    return-void
.end method

.method public returnSlide()V
    .locals 2

    .line 7686
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$60;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mSlideUnlockView:Lcom/powervision/gcs/view/SlideReturnView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SlideReturnView;->setVisibility(I)V

    .line 7687
    const-string v1, "lzqmission"
    
    const-string v0, "Always unlocking"
    
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    
    const/4 v0, 0x1
    
    invoke-static {v0}, Lcom/powervision/natives/PVSDK_W4_API;->setArmStatus(I)V
    
    return-void
.end method
