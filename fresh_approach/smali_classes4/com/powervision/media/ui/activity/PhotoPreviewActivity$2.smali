.class Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;
.super Ljava/lang/Object;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Lcom/powervision/media/widgets/AlbumDialog$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

.field final synthetic val$deleteDialog:Lcom/powervision/media/widgets/AlbumDialog;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;Lcom/powervision/media/widgets/AlbumDialog;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    iput-object p2, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;->val$deleteDialog:Lcom/powervision/media/widgets/AlbumDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;->val$deleteDialog:Lcom/powervision/media/widgets/AlbumDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/AlbumDialog;->dismiss()V

    return-void
.end method

.method public confirm()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;->val$deleteDialog:Lcom/powervision/media/widgets/AlbumDialog;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/AlbumDialog;->dismiss()V

    .line 245
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$000(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)V

    .line 246
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->access$100(Lcom/powervision/media/ui/activity/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_191:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 248
    iget-object v0, p0, Lcom/powervision/media/ui/activity/PhotoPreviewActivity$2;->this$0:Lcom/powervision/media/ui/activity/PhotoPreviewActivity;

    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/PhotoPreviewActivity;->back()V

    :cond_0
    return-void
.end method
