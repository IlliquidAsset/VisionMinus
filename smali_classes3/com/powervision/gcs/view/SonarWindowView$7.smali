.class Lcom/powervision/gcs/view/SonarWindowView$7;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Lcom/powervision/gcs/mina/HandlerEvent$OnSonarDataStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarWindowView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$7;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSonarDataSotp()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$7;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$300(Lcom/powervision/gcs/view/SonarWindowView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$7;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$7$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarWindowView$7$2;-><init>(Lcom/powervision/gcs/view/SonarWindowView$7;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSonarDataStart()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$7;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$300(Lcom/powervision/gcs/view/SonarWindowView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$7;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    new-instance v1, Lcom/powervision/gcs/view/SonarWindowView$7$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/SonarWindowView$7$1;-><init>(Lcom/powervision/gcs/view/SonarWindowView$7;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
