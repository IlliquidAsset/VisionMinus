.class Lcom/powervision/media/ui/activity/MediaLibActivity$3;
.super Lio/reactivex/observers/DefaultObserver;
.source "MediaLibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/MediaLibActivity;->workCancelTitleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/MediaLibActivity;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$3;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 5

    .line 676
    iget-object v0, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$3;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/MediaLibActivity;->access$400(Lcom/powervision/media/ui/activity/MediaLibActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$3;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_17:I

    invoke-virtual {p1, v1}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/powervision/media/ui/activity/MediaLibActivity$3;->this$0:Lcom/powervision/media/ui/activity/MediaLibActivity;

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_18:I

    .line 677
    invoke-virtual {v2, v3}, Lcom/powervision/media/ui/activity/MediaLibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 676
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 673
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/MediaLibActivity$3;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
