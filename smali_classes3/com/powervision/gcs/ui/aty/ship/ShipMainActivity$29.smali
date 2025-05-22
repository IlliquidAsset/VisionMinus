.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$29;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->dolphinFixedSpeedCruise(I)V
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

    .line 3455
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$29;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3458
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$29;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_1:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setTitle(I)V

    return-void
.end method
