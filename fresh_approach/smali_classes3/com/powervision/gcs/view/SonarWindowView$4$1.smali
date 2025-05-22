.class Lcom/powervision/gcs/view/SonarWindowView$4$1;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarWindowView$4;->lightChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/view/SonarWindowView$4;

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView$4;Z)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$4$1;->this$1:Lcom/powervision/gcs/view/SonarWindowView$4;

    iput-boolean p2, p0, Lcom/powervision/gcs/view/SonarWindowView$4$1;->val$isOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$4$1;->this$1:Lcom/powervision/gcs/view/SonarWindowView$4;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView$4;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$4$1;->this$1:Lcom/powervision/gcs/view/SonarWindowView$4;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView$4;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    iget-boolean v1, p0, Lcom/powervision/gcs/view/SonarWindowView$4$1;->val$isOpen:Z

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->pvSonarCommonSettingViewOpenOrCloseLight(Z)V

    .line 370
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/model/event/SonarLight;

    iget-boolean v2, p0, Lcom/powervision/gcs/view/SonarWindowView$4$1;->val$isOpen:Z

    invoke-direct {v1, v2}, Lcom/powervision/gcs/model/event/SonarLight;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method
