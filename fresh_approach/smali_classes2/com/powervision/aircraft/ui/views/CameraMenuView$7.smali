.class Lcom/powervision/aircraft/ui/views/CameraMenuView$7;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;->showDelayLESLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$7;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$7;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1400(Lcom/powervision/aircraft/ui/views/CameraMenuView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$7;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->APP_function_25:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
