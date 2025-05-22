.class Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$1;
.super Ljava/lang/Object;
.source "TestRtspActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->initViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/TestRtspActivity;)Landroid/view/TextureView;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setScaleX(F)V

    return-void
.end method
