.class Lcom/powervision/gcs/view/ship/ShipCommonSettingView$2;
.super Ljava/lang/Object;
.source "ShipCommonSettingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->showRed()V
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

    .line 144
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->shipCommonAboutBtn:Lcom/powervision/gcs/view/RedPointRadioButton;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/RedPointRadioButton;->showRedPoint()V

    return-void
.end method
