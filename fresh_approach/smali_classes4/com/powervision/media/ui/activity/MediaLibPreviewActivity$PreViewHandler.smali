.class Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "MediaLibPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreViewHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V
    .locals 0

    .line 1054
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;Landroid/os/Message;)V
    .locals 2

    .line 1059
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1060
    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$500(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)V

    goto :goto_0

    .line 1061
    :cond_0
    iget p2, p2, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 1063
    invoke-static {p1, p2, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$600(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;ZZ)V

    .line 1064
    invoke-static {p1, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$700(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;Z)V

    .line 1065
    invoke-static {p1}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->access$800(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 1052
    check-cast p1, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity$PreViewHandler;->referenceHandleMessage(Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;Landroid/os/Message;)V

    return-void
.end method
