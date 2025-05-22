.class Lcom/powervision/media/ui/activity/VideoPlayActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/powervision/media/widgets/MediaDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/VideoPlayActivity;->onDeleteClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;

.field final synthetic val$dialog:Lcom/powervision/media/widgets/MediaDialog;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/VideoPlayActivity;Lcom/powervision/media/widgets/MediaDialog;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$2;->this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;

    iput-object p2, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$2;->val$dialog:Lcom/powervision/media/widgets/MediaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$2;->val$dialog:Lcom/powervision/media/widgets/MediaDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaDialog;->dismiss()V

    return-void
.end method

.method public confirm()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$2;->this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->access$500(Lcom/powervision/media/ui/activity/VideoPlayActivity;)V

    .line 372
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$2;->val$dialog:Lcom/powervision/media/widgets/MediaDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaDialog;->dismiss()V

    .line 373
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoPlayActivity$2;->this$0:Lcom/powervision/media/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/VideoPlayActivity;->finish()V

    return-void
.end method
