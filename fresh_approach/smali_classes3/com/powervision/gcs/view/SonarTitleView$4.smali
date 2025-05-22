.class Lcom/powervision/gcs/view/SonarTitleView$4;
.super Ljava/lang/Object;
.source "SonarTitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarTitleView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarTitleView;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView$4;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 348
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->getSonarPowerQuantity()V

    const-string v0, "SonarTitleView"

    const-string v1, "getPower"

    .line 349
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView$4;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarTitleView;->access$100(Lcom/powervision/gcs/view/SonarTitleView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
