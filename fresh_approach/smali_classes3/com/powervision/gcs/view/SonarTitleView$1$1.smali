.class Lcom/powervision/gcs/view/SonarTitleView$1$1;
.super Ljava/lang/Object;
.source "SonarTitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarTitleView$1;->onConnectStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/SonarTitleView$1;

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarTitleView$1;Z)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView$1$1;->this$1:Lcom/powervision/gcs/view/SonarTitleView$1;

    iput-boolean p2, p0, Lcom/powervision/gcs/view/SonarTitleView$1$1;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView$1$1;->this$1:Lcom/powervision/gcs/view/SonarTitleView$1;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarTitleView$1;->this$0:Lcom/powervision/gcs/view/SonarTitleView;

    iget-boolean v1, p0, Lcom/powervision/gcs/view/SonarTitleView$1$1;->val$isConnected:Z

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarTitleView;->setConnectState(Z)V

    return-void
.end method
