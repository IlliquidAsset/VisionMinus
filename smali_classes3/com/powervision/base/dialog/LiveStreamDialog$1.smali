.class Lcom/powervision/base/dialog/LiveStreamDialog$1;
.super Ljava/lang/Object;
.source "LiveStreamDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/dialog/LiveStreamDialog;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/dialog/LiveStreamDialog;


# direct methods
.method constructor <init>(Lcom/powervision/base/dialog/LiveStreamDialog;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog$1;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog$1;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-static {p1}, Lcom/powervision/base/dialog/LiveStreamDialog;->access$000(Lcom/powervision/base/dialog/LiveStreamDialog;)Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/powervision/base/dialog/LiveStreamDialog$1;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-static {p1}, Lcom/powervision/base/dialog/LiveStreamDialog;->access$000(Lcom/powervision/base/dialog/LiveStreamDialog;)Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/base/dialog/LiveStreamDialog$1;->this$0:Lcom/powervision/base/dialog/LiveStreamDialog;

    invoke-static {v0}, Lcom/powervision/base/dialog/LiveStreamDialog;->access$100(Lcom/powervision/base/dialog/LiveStreamDialog;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;->onLiveStreamAudioEnable(Z)V

    :cond_0
    return-void
.end method
