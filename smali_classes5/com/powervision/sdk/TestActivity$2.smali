.class Lcom/powervision/sdk/TestActivity$2;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/sdk/TestActivity;->rxjava()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private disposable:Lio/reactivex/disposables/Disposable;

.field private i:I

.field final synthetic this$0:Lcom/powervision/sdk/TestActivity;


# direct methods
.method constructor <init>(Lcom/powervision/sdk/TestActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/powervision/sdk/TestActivity$2;->this$0:Lcom/powervision/sdk/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 134
    iget p1, p0, Lcom/powervision/sdk/TestActivity$2;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/sdk/TestActivity$2;->i:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 136
    iget-object p1, p0, Lcom/powervision/sdk/TestActivity$2;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/powervision/sdk/TestActivity$2;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
