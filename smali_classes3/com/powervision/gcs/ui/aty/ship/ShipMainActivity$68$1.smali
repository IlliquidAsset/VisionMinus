.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;)V
    .locals 0

    .line 8761
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 8764
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$68;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showIntentTips()V

    return-void
.end method
