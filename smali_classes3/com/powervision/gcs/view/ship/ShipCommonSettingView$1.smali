.class Lcom/powervision/gcs/view/ship/ShipCommonSettingView$1;
.super Ljava/lang/Object;
.source "ShipCommonSettingView.java"

# interfaces
.implements Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipCommonSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideRedPoint()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->hideRed()V

    return-void
.end method

.method public showRedPoint()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->showRed()V

    return-void
.end method
