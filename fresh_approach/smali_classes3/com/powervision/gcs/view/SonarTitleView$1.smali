.class Lcom/powervision/gcs/view/SonarTitleView$1;
.super Ljava/lang/Object;
.source "SonarTitleView.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;


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

    .line 107
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView$1;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectStateChanged(Z)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView$1;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    new-instance v1, Lcom/powervision/gcs/view/SonarTitleView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/SonarTitleView$1$1;-><init>(Lcom/powervision/gcs/view/SonarTitleView$1;Z)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarTitleView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
