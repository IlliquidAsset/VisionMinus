.class Lcom/lewis/edit/ui/activity/AVEditActivity$1;
.super Lio/reactivex/observers/DefaultObserver;
.source "AVEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/ui/activity/AVEditActivity;->requestPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DefaultObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$1;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

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

.method public onNext(Ljava/lang/Boolean;)V
    .locals 0

    .line 529
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 530
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$1;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$000(Lcom/lewis/edit/ui/activity/AVEditActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 532
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$1;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$100(Lcom/lewis/edit/ui/activity/AVEditActivity;)V

    goto :goto_0

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$1;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-virtual {p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->finish()V

    goto :goto_0

    .line 537
    :cond_1
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$1;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-virtual {p1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 526
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/AVEditActivity$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
