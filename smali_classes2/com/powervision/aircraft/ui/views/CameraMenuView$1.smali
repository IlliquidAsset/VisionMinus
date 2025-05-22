.class Lcom/powervision/aircraft/ui/views/CameraMenuView$1;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;
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

    .line 124
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$1;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$1;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$000(Lcom/powervision/aircraft/ui/views/CameraMenuView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
