.class Lcom/powervision/gcs/view/SonarTitleView$3;
.super Ljava/lang/Object;
.source "SonarTitleView.java"

# interfaces
.implements Lcom/powervision/gcs/mina/HandlerEvent$OnSonarBatteryHandlerListener;


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

    .line 263
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView$3;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryHandler(I)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView$3;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    new-instance v1, Lcom/powervision/gcs/view/SonarTitleView$3$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/SonarTitleView$3$1;-><init>(Lcom/powervision/gcs/view/SonarTitleView$3;I)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarTitleView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
