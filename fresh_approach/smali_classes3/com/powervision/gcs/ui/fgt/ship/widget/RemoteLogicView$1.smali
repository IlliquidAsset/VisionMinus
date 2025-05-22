.class Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;
.super Ljava/lang/Object;
.source "RemoteLogicView.java"

# interfaces
.implements Lcom/powervision/gcs/view/RemoteModelSwitchView$OnRemoteModelInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->onBindRemoteModeView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveClickListener(I)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$002(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;Z)Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$100(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;F)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$100(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;F)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$100(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;F)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;->access$100(Lcom/powervision/gcs/ui/fgt/ship/widget/RemoteLogicView;F)V

    :goto_0
    return-void
.end method
